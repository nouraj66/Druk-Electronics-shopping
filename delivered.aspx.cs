using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Configuration;

namespace WebApplication8
{
    public partial class delivered : System.Web.UI.Page
    {
        user cs;
        SqlDataSource ds;
        SqlDataAdapter da;
        DataSet dd;
        string s = ConfigurationManager.ConnectionStrings["Druk"].ConnectionString;
        SqlConnection con;

        private CrystalDecisions.CrystalReports.Engine.ReportDocument
        cr = new
        CrystalDecisions.CrystalReports.Engine.ReportDocument();
        static string Crypath = "";

         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {

                lblOrderID.Text = "Welcome, " + Session["email"].ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                int orderID = Convert.ToInt32(Request.QueryString["Id"] ?? "0");
                user obj = new user();
                gvOrderDetails.DataSource = obj.getOrderDetails(orderID);
                gvOrderDetails.DataBind();
            }

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
       
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon(); 
            Response.Redirect("Login.aspx"); 
        }

        protected void gvOrderDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select* from Orders ", con);
            dd = new DataSet();
            da.Fill(dd);
            string xml = @"D:/final projcet asp.net/WebApplication8/data.xml";
            dd.WriteXmlSchema(xml);
            Crypath = @"D:/final projcet asp.net/WebApplication8/CrystalReport1.rpt";
            cr.Load(Crypath);
            cr.SetDataSource(dd);
            cr.Database.Tables[0].SetDataSource(dd);
            cr.Refresh();
            CrystalReportViewer1.ReportSource = cr;
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "order");
        }
    }
}