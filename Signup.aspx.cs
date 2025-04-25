using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace WebApplication8
{
    public partial class Signup : System.Web.UI.Page
    {
        user cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (btnSignup.Text == "Sign Up")
            {
                cs.startcon();
                cs.insert(txtFullName.Text, txtgen.Text ,txtEmail.Text, txtAddress.Text, ddl.SelectedValue ,txtPassword.Text);
                lblMessage.Text = "Registration Successful";
            }
        }
    }
}