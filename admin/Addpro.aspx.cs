using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication8.admin
{
    public partial class Addpro : System.Web.UI.Page
    {
       SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        adm cs; 
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillcat();
            }
        }

        void getcon()
        {
            cs = new adm();
            cs.startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            uploadimg();

            int categoryID;

            if (int.TryParse(ddltype.SelectedValue, out categoryID) && categoryID > 0)
            {
                cs.insert(txtProductName.Text, txtDescription.Text, txtPrice.Text, fnm, categoryID);
                message.Text = "Package Added Successfully";
            }
            else
            {
                message.Text = "Error: Please select a valid category.";
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

        void fillcat()
        {
            getcon();
            ddltype.Items.Clear();
            da = new SqlDataAdapter("select CategoryID, CategoryName from categories", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);

            ddltype.Items.Add(new ListItem("-- Select Category --", "0"));

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string categoryName = ds.Tables[0].Rows[i]["CategoryName"].ToString();
                string categoryID = ds.Tables[0].Rows[i]["CategoryID"].ToString();

                ddltype.Items.Add(new ListItem(categoryName, categoryID)); 
            }
        }

        protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from categories where Categoryname='" + ddltype.SelectedItem.ToString() + "'", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            ViewState["id"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
        }
    }
}