using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication8.admin
{
    public partial class Order : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["Druk"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrders();
            }
        }

        void LoadOrders()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT Id, UserID, TotalAmount, Orderdate, status FROM Orders", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateStatus")
            {
                int orderId = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = (GridViewRow)((Button)e.CommandSource).NamingContainer;
                DropDownList ddlStatus = (DropDownList)row.FindControl("DropDownList1");

                using (SqlConnection con = new SqlConnection(s))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE Orders SET status = @status WHERE Id = @Id", con);
                    cmd.Parameters.AddWithValue("@status", ddlStatus.SelectedValue);
                    cmd.Parameters.AddWithValue("@Id", orderId);
                    cmd.ExecuteNonQuery();
                }

                LoadOrders();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlStatus = (DropDownList)e.Row.FindControl("DropDownList1");
                string status = DataBinder.Eval(e.Row.DataItem, "Status")?.ToString();

                if (ddlStatus.Items.FindByValue(status) != null)
                {
                    ddlStatus.SelectedValue = status;
                }
                else
                {
                    ddlStatus.SelectedValue = "";
                }
            }
        }
    }
}
