using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace WebApplication8
{
    public partial class cart : System.Web.UI.Page
    {
        user cs;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("login.aspx"); 
            }
           
            getcon();
            if (!IsPostBack)
            {
                //LoadCart();
            }
        }
       
       
        void getcon()
        {
            cs = new user();
            cs.startcon();
        }
        //void LoadCart()
        //{
        //    string userId = Session["Email"].ToString();
        //    gvCart.DataSource = cs.(userId);
        //    gvCart.DataBind();
        //}


        protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string userId = Session["Email"].ToString(); 
            string productId = e.CommandArgument.ToString();

            if (e.CommandName == "UpdateQuantity")
            {
                GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                TextBox txtQuantity = (TextBox)row.FindControl("txtQuantity");
                int quantity = Convert.ToInt32(txtQuantity.Text);
               cs.updatecart(productId, userId, quantity);
            }
            else if (e.CommandName == "Remove")
            {
                cs.deletecartitem(productId, userId);
            }

            //LoadCart(); 
        }
    

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("login.aspx"); 
                return;
            }

            string Email = Session["Email"].ToString();

               getcon();
            {
                cs.startcon();

                SqlCommand cmd = new SqlCommand("SELECT SUM(CAST(Price AS FLOAT) * CAST(Quantity AS INT)) FROM Cart WHERE UserId = @UserId", cs.startcon());
                cmd.Parameters.AddWithValue("@UserId", Email);

                object result = cmd.ExecuteScalar();

                Session["TotalAmount"] = (result != DBNull.Value) ? result.ToString() : "0"; // Store total in session
            }

            Response.Redirect("checkout.aspx");
        }
    }

}










  