using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlTypes;
using System.Configuration;
using System.IO;

namespace WebApplication8.admin
{
    public partial class adminregister : System.Web.UI.Page
    {
       
        adm cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            cs = new adm();
            cs.startcon();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int row = cs.adminsert(txtFullName.Text, txtEmail.Text, txtPhone.Text, txtPassword.Text);

            if (row > 0)
            {
                Response.Redirect("adminlogin.aspx");
            }
            else
            {
                lblMessage.Text = "Admin registered";
            }
        }
    }
}