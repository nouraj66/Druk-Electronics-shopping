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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        user cs;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            cs = new user();
            getcon();
            DataSet ds = cs.login(txtemail.Text, txtPassword.Text);
            if (ds.Tables[0].Rows.Count > 0) 
            {
                Session["Email"] = txtemail.Text;
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Email or Password";
            }
        }
    }
 }
