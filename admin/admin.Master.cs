using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the current page name
                string currentPage = Request.Url.AbsolutePath.ToLower();

                // Remove session when visiting AdminRegister.aspx
                if (currentPage.Contains("adminregister.aspx"))
                {
                    Session.Clear();
                    Session.Abandon();
                }

                if (Session["adminuser"] == null && !(currentPage.Contains("admin.aspx") || currentPage.Contains("adminregister.aspx")))
                {
                    Response.Redirect("Admin.aspx");
                }
                else if (Session["adminuser"] != null)
                {
                    txtadmin.Text = Session["adminuser"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("admlog.aspx", true);
        }
    }
}