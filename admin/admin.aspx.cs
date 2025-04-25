using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminuser"] != null)
            {
                lblUser.Text = "Welcome, " + Session["adminuser"].ToString();
            }
            else
            {
                Response.Redirect("admlog.aspx");

                {

                }
            }
        }
    }
}