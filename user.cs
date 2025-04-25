using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication8
{
    public class user
    {
        string s = ConfigurationManager.ConnectionStrings["Druk"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public SqlConnection startcon()
        {
            string connString = ConfigurationManager.ConnectionStrings["Druk"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            return con;
        }

        //login user
        public DataSet login(string email, string password)
        {
            da = new SqlDataAdapter("select * from loginuser where Email='" + email + "' AND Password='" + password + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    
    public void insert(string fullname, string gender, string email, string address, string state, string password)
        {
            cmd = new SqlCommand("insert into loginuser (fullname, gender, email, address, state, password) " +
                                 "values ('" + fullname + "', '" + gender + "', '" + email + "', '" + address + "', '" + state + "', '" + password + "')", con);
            cmd.ExecuteNonQuery();
        }


        public void addcart(int productid, string productname, string imageurl, decimal price, int quantity, string userid)
        {
            cmd = new SqlCommand("insert into cart (productid, productname, imageurl, price, quantity, userid) " +
                                 "values ('" + productid + "', '" + productname + "', '" + imageurl + "', '" + price + "', '" + quantity + "', '" + userid + "')", con);
            cmd.ExecuteNonQuery();
        }

        public void Addtocart(string userid, string productid, string productname, string imageurl, string price)
        {
            startcon();
            cmd = new SqlCommand("select quantity from cart where productid = '" + productid + "' and userid = '" + userid + "'", con);
            object result = cmd.ExecuteScalar();

            if (result != null)
            {
                cmd = new SqlCommand("update cart set quantity = quantity + 1 where productid = '" + productid + "' and userid = '" + userid + "'", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd = new SqlCommand("insert into cart (userid, productid, productname, imageurl, quantity, price) " +
                                     "values ('" + userid + "', '" + productid + "', '" + productname + "', '" + imageurl + "', '1', '" + price + "')", con);
                cmd.ExecuteNonQuery();
            }

            con.Close();
        }

        //public DataSet getcartdata(string userid)
        //{
        //    startcon();
        //    string query = "select productid, productname, imageurl, price, quantity, " +
        //                   "cast(quantity as int) * cast(price as decimal(10,2)) as total " +
        //                   "from cart where userid = '" + userid + "'";

        //    da = new SqlDataAdapter(query, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con.Close();

        //    return ds;
        //}
        //load categorues//
        public DataSet addCategories()
        {
            cmd = new SqlCommand("SELECT * FROM Categories", startcon());
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet getprobycategories(int categoryID)
        {
            if (categoryID > 0)
            {
                cmd = new SqlCommand("SELECT * FROM Products WHERE CategoryID = @CategoryID", startcon());
                cmd.Parameters.AddWithValue("@CategoryID", categoryID); // Prevent SQL Injection
            }
            else
            {
                cmd = new SqlCommand("SELECT * FROM Products", startcon());
            }

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet fillgrid(string userid)
        {
            startcon();
            da = new SqlDataAdapter("select * from Cart  where userid = '" + userid + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet display()
        {
            da = new SqlDataAdapter("select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds; 
        }

        public void updatecart(string productid, string userid, int quantity)
        {
            startcon();
            cmd = new SqlCommand("update cart set quantity = '" + quantity + "' where productid = '" + productid + "' and userid = '" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void deletecartitem(string productid, string userid)
        {
            startcon();
            cmd = new SqlCommand("delete from cart where productid = '" + productid + "' and userid = '" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void insertorder(int userid, string totalamount)
        {
            startcon();
            cmd = new SqlCommand("insert into orders (userid, totalamount, orderdate, status) " +
                                 "values ('" + userid + "', '" + totalamount + "', convert(varchar, getdate(), 120), 'pending')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void insertorderitem(int orderid, int productid, int quantity, string price)
        {
            startcon();
            cmd = new SqlCommand("insert into orderitems (orderid, productid, quantity, price) " +
                                 "values ('" + orderid + "', '" + productid + "', '" + quantity + "', '" + price + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void insertorderitemsfromcart(int orderid, int userid)
        {
            startcon();
            cmd = new SqlCommand("insert into orderitems (orderid, productid, quantity, price) " +
                                 "select '" + orderid + "', productid, quantity, price from cart where userid = '" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public int contactinsert(string name, string email, string subject, string message)
        {
            int row = 0;
            startcon();

            cmd = new SqlCommand("insert into contact (name, email, subject, message) " +
                                 "values ('" + name + "', '" + email + "', '" + subject + "', '" + message + "')", con);
            row = cmd.ExecuteNonQuery();

            con.Close();
            return row;
        }

        //order tabel//
        public DataTable getOrderDetails(int UserID)
        {

            if (HttpContext.Current.Session["Email"] != null)
            {
                string userEmail = HttpContext.Current.Session["Email"].ToString();
                startcon();

                SqlCommand cmd = new SqlCommand("SELECT Id FROM loginuser WHERE Email = '" + userEmail + "'", con);
                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    int userID = Convert.ToInt32(result);

                    SqlDataAdapter da = new SqlDataAdapter("SELECT OrderDate, Status FROM Orders WHERE UserID = " + userID, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    return dt;
                }
                con.Close();
            }

            return null;
        }
            public DataSet viewuser()
            {
                startcon();
                da = new SqlDataAdapter("SELECT * FROM loginuser", con);
                ds = new DataSet();
                da.Fill(ds);
                con.Close();
                return ds;
            }

        public void DeleteUserById(int id)
        {
            startcon(); 
            SqlCommand cmd = new SqlCommand("DELETE FROM loginuser WHERE Id = '" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
  }













