using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace WebApplication8.admin
{
    public partial class Massages : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        user cs;
        SqlConnection con;
        private CrystalDecisions.CrystalReports.Engine.ReportDocument
       cr = new
       CrystalDecisions.CrystalReports.Engine.ReportDocument();
        static string Crypath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            massages();
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }
         void massages()
        {
            da = new SqlDataAdapter("select * from Contact", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            gridview1.DataSource = ds;
            gridview1.DataBind();
        }

        protected void Unnamed1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select* from Contact ", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            string xml = @"D:/final projcet asp.net/WebApplication8/data.xml";
            ds.WriteXmlSchema(xml);
            Crypath = @"D:/final projcet asp.net/WebApplication8/CrystalReport2.rpt";
            cr.Load(Crypath);
            cr.SetDataSource(ds);
            cr.Database.Tables[0].SetDataSource(ds);
            cr.Refresh();
            CrystalReportViewer1.ReportSource = cr;
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Massages");
        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}