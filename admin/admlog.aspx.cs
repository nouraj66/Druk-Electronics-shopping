using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication8.admin
{
    public partial class admlog : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        adm cs;
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            cs = new adm();
            cs.startcon();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("select count(*) from logadm where " +
                "Email='" + txtEmail.Text + "'" +  " and Password='" + txtPassword.Text + "'", cs.startcon());
            i = Convert.ToInt16(cmd.ExecuteScalar());

            if (i > 0)
            {
                Session["adminuser"] = txtEmail.Text;
                Response.Redirect("admin.aspx");
            }
            else
            {
                lblMessage.Text = "Data not Featched";
            }
        }
    }
}