using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace WebApplication8.admin
{
    public partial class viewusers : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        user cs;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }

        void getcon()
        {
            cs = new user();
            con= cs.startcon();
        }

        void fillgrid()
        {
            getcon();
            user userobj = new user();
            DataSet ds = userobj.viewuser();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_Delete")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                user cs = new user();
                cs.DeleteUserById(Id);

           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
           
        }
    }
}