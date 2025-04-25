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
    public partial class contact : System.Web.UI.Page
    {
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
        }
        void getcon()
        {
            cs = new user();
            cs.startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            int row = cs.contactinsert(txtName.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);
            if (row > 0)
            { 
                lblMessage.Text = "Message send successfully";
            }
            else
            {
                lblMessage.Text = "Having some problem";
            }
        }
    }
}