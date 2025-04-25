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
    public partial class WebForm1 : System.Web.UI.Page
    {
        user cs;
        SqlConnection con;
    
        protected void Page_Load(object sender, EventArgs e)
        {
              getcon();
              if (Session["Email"] != null)
                {

                lblUser.Text = "Welcome, " + Session["Email"].ToString();

            }
            else
                {
                    Response.Redirect("Login.aspx"); 
                }

           
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }
    }

}