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
    public partial class checkout : System.Web.UI.Page
    {
        
        user cs;
        SqlDataAdapter da;
        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            getcon();
            if (Session["Email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["productID"] != null)
                {
                    LoadSingleProduct();
                }
                else
                {
                    LoadCartTotal();
                }
            }
        }

        void getcon()
        {
            cs = new user();
            cs.startcon();
        }

        void LoadSingleProduct()
        {
            int productID = Convert.ToInt32(Request.QueryString["productID"]);
            da = new SqlDataAdapter("SELECT ProductName, Price FROM Products WHERE Id = " + productID, cs.startcon());
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTotalAmount.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            }
        }

        private void LoadCartTotal()
        {
            if (Session["Email"] == null) return;
            string email = Session["Email"].ToString();
            SqlCommand cmd = new SqlCommand("SELECT SUM(CAST(Price AS FLOAT) * CAST(Quantity AS INT)) FROM Cart WHERE UserId = @UserId", cs.startcon());
            cmd.Parameters.AddWithValue("@UserId", email);
            object result = cmd.ExecuteScalar();
            lblTotalAmount.Text = (result != DBNull.Value && result != null) ? "₹" + result.ToString() : "₹0";
          
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            if (cs == null)
            {
                cs = new user();
            }

            if (Session["Email"] == null)
            {
                Response.Redirect("login.aspx"); 
                return;
            }

            string email = Session["Email"].ToString(); 
            int userID = 0;  

            SqlCommand cmdUser = new SqlCommand("select Id from loginuser WHERE Email = '" + email + "'", cs.startcon());
            object result = cmdUser.ExecuteScalar();

            if (result != null)
            {
                userID = Convert.ToInt32(result);
            }
            else
            {
             
                Response.Write("Error: User not found!"); 
                return;
            }

            string totalAmount = string.IsNullOrEmpty(lblTotalAmount.Text) ? "0" : lblTotalAmount.Text;

            if (chkPaymentMethod.SelectedIndex == -1) return;

            cs.insertorder(userID, totalAmount);

            int orderID = 0;
            SqlCommand cmdOrderID = new SqlCommand("select top 1 Id from Orders where UserID = '" + userID + "' ORDER BY Id DESC", cs.startcon());
            object resultOrder = cmdOrderID.ExecuteScalar();

            if (resultOrder != null)
            {
                orderID = Convert.ToInt32(resultOrder);
            }
            else
            {
                
                return;
            }

            if (Request.QueryString["productID"] != null)
            {
                int productID = Convert.ToInt32(Request.QueryString["productID"]);
                SqlCommand cmdProductPrice = new SqlCommand("select Price from Products WHERE Id = '" + productID + "'", cs.startcon());
                string productPrice = cmdProductPrice.ExecuteScalar().ToString();

                cs.insertorderitem(orderID, productID, 1, productPrice);
            }
            else
            {
                SqlCommand cmdOrderItem = new SqlCommand("insert into OrderItems (OrderID, ProductID, Quantity, Price) " +
                                                         "select '" + orderID + "', ProductID, Quantity, Price from Cart where UserID = '" + userID + "'", cs.startcon());
                cmdOrderItem.ExecuteNonQuery();

               
            }

          

            Response.Redirect("delivered.aspx?orderID=" + orderID);
        }
        
    }
  }



    
