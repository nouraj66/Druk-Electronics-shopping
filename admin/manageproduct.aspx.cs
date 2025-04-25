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
    public partial class manageproduct : System.Web.UI.Page
    {
    
        DataSet ds;
        SqlDataAdapter da;
        adm cs;
        string  fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
            fillcat();
        }

        void getcon()
        {
            cs = new adm();
            cs.startcon();


        }

        void fillgrid()
        {
            cs = new adm();
            getcon();
            GridView1.DataSource = cs.filldata();
            GridView1.DataBind();

        }
        void fillcat()
        {
            getcon();
            ddltype.Items.Clear();
            da = new SqlDataAdapter("select * from categories", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ddltype.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        void uploadimg()
        {
            if (FileUpload1.HasFile)
            {
                fnm = "img/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(fnm));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            uploadimg();
            if (Button1.Text == "Save")
            {
                cs.Insert(txtProductName.Text, txtDescription.Text, txtPrice.Text, fnm, ddltype.SelectedIndex);
                fillgrid();
            }
            else
            {
                cs.update(Convert.ToInt16(ViewState["id"]),txtProductName.Text, txtDescription.Text, txtPrice.Text, fnm, ddltype.SelectedIndex);
                fillgrid();

            }
        }

        void filltext()
        {
            cs = new adm();
            getcon();
            ds= new DataSet();
            ds = cs.select(Convert.ToInt32(ViewState["id"]));
            txtProductName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
            txtDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            ddltype.SelectedIndex = 0;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from categories where Categoryname='" + ddltype.SelectedItem.ToString() + "'", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            ViewState["id"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_Update")
            {
                ViewState["id"] = e.CommandArgument;
                filltext();
                Button1.Text = "Update";
            }
            else if (e.CommandName == "Cmd_Delete")
            {
                cs.delete(Convert.ToInt32(e.CommandArgument));
                fillgrid();
            }
        }
    }
}