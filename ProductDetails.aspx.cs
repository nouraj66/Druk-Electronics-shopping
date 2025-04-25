using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication8
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        user cs;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    int productId = Convert.ToInt32(Request.QueryString["Id"]);
                    LoadProductDetails(productId);
                }
            }
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }

        private void LoadProductDetails(int productId)
        {

            cmd = new SqlCommand("select Id, ProductName, ImageUrl, Price, Description from Products where Id = @Id", cs.startcon());
            cmd.Parameters.AddWithValue("@Id", productId);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                dlProductDetails.DataSource = ds.Tables[0];
                dlProductDetails.DataBind();
            }


        }

        protected void dlProductDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dlProductDetails_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart_Command(object sender, CommandEventArgs e)
        {

        }

        protected void dlProductDetails_ItemCommand(object source, DataListCommandEventArgs e)
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