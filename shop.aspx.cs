using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace WebApplication8
{
    public partial class shop : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int row, p;
        PagedDataSource pg;
        user cs;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {

                lblUser.Text = "Welcome, " + Session["email"].ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            getcon();
            displayProducts();
            if (!IsPostBack)
            {
                LoadCategories();
                LoadProducts(1);
            }
        }

        void getcon()
        {
            
            cs = new user();
            cs.startcon();
        }

        void displayProducts()
        {
            cs = new user();
            getcon();
            DataSet ds = cs.display();
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 3;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["Id"]);
            dlProducts.DataSource = pg;
            dlProducts.DataBind();
        }

        void LoadProducts(int categoryID)
        {
            getcon();

            user lc = new user();
            DataSet ds = lc.getprobycategories(categoryID);
            dlProducts.DataSource = ds;
            dlProducts.DataBind();
        }

        void LoadCategories()
        {
            getcon();
            user lc = new user();
            DataSet ds = lc.addCategories();
            ddlCategories.DataSource = ds;
            ddlCategories.DataBind();
            ddlCategories.DataTextField = "Categoryname";
            ddlCategories.DataValueField = "CategoryID";
            ddlCategories.DataBind();
            ddlCategories.Items.Insert(0, new ListItem("--Select Category--", "0"));
        }

       

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            btnPrev.Enabled = true;
            p += Convert.ToInt32(ViewState["Id"]) - 1;
            ViewState["Id"] = p;
            if (p == 0)
            {
                btnPrev.Enabled = false;
            }
            displayProducts();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            btnPrev.Enabled = true;
            p += Convert.ToInt32(ViewState["Id"]) + 1;
            ViewState["Id"] = p;
            int temp = row / pg.PageSize;
            if (p >= temp)
            {
                btnNext.Enabled = false;
            }
            displayProducts();
        }

     protected void dlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(ddlCategories.SelectedValue);
            LoadProducts(Id);
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(ddlCategories.SelectedValue);
            LoadProducts(Id);
        }

        protected void dlProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string productId = e.CommandArgument?.ToString();
            string userId = Session["email"].ToString();

            if (e.CommandName == "BuyNow")
            {
                Response.Redirect("Checkout.aspx?productId=" + productId);
            }
            else if (e.CommandName == "AddToCart")
            {
                getcon(); 

                if (cs.startcon().State != ConnectionState.Open)
                {
                    cs.startcon().Open();
                }

                SqlCommand cmd = new SqlCommand("select ProductName, ImageUrl, Price FROM Products WHERE Id = '" + productId + "'", cs.startcon());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string productName = dr["ProductName"].ToString();
                    string imageUrl = dr["ImageUrl"].ToString();
                    string price = dr["Price"].ToString();
                    dr.Close(); 

                    cs.startcon().Close(); 

                    cs.Addtocart(userId, productId, productName, imageUrl, price);
                }
                else
                {
                    dr.Close();
                    cs.startcon().Close();
                }
            }
        }
    }
}

    




    
