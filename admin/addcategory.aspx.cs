using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication8.admin
{
    public partial class addcategory : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            cs.startcon();
            cs.category(txtName.Text);
            
        }
    }
}
