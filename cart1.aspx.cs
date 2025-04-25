using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class cart1 : System.Web.UI.Page
    {
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        user cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            fillgrid();
            getcon();
        }
        void getcon()
        {
            cs = new user();
            cs.startcon();
        }

        void fillgrid()
        {
            getcon();
            string userId = Session["Email"].ToString();
            GridView1.DataSource = cs.fillgrid(userId);
            GridView1.DataBind();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string userId = Session["Email"].ToString();
            string productId = e.CommandArgument.ToString();

            if (e.CommandName == "Remove")
            {
                cs.deletecartitem(productId, userId);
            }

            
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

                SqlCommand cmd = new SqlCommand("select sum(cast(price as float) * cast(quantity as int)) from Cart where UserId = @UserId", cs.startcon());
                cmd.Parameters.AddWithValue("@UserId", Email);

                object result = cmd.ExecuteScalar();

                Session["TotalAmount"] = (result != DBNull.Value) ? result.ToString() : "0"; 
            }

            Response.Redirect("checkout.aspx");
        }
    }
}