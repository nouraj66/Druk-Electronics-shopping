using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace WebApplication8.admin
{
    public class adm
    {
        string s = ConfigurationManager.ConnectionStrings["Druk"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int i;


        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;

        }
        
        public int adminsert(string afnm, string aemail, string aphone, string pass)
        {
            int row = 0;
            startcon();
            cmd = new SqlCommand("insert into logadm(Fullname,Email,Phone,Password)" + "values('" + afnm + "','" + aemail + "','" + aphone + "','" + pass + "')", con);
            cmd.ExecuteNonQuery();
            return row;

        }
        public void insert(string PN, string DS, string PR, string IU, int cid)
        {
            SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM categories WHERE CategoryID = " + cid, con);
            int categoryExists = (int)checkCmd.ExecuteScalar();
            cmd = new SqlCommand("insert into Products(ProductName, Description, Price, ImageUrl, CategoryID)" +
                "values('" + PN + "','" + DS + "','" + PR + "','" + IU + "','" + cid + "')", con);
            cmd.ExecuteNonQuery();
        }

        public void Insert(string PN, string DS, string PR, string IU, int cid)
        {
          
            cmd = new SqlCommand("insert into Products(ProductName, Description, Price, ImageUrl, CategoryID)" +
                "values('" + PN + "','" + DS + "','" + PR + "','" + IU + "','" + cid + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void update(int id, string PN, string DS, string PR, string IU, int cid)
        {

            cmd = new SqlCommand("update Products set ProductName='" + PN + "', Description='" + DS +  "', Price=" + PR + ", ImageUrl='" + IU + "', CategoryID=" + cid + " where Id=" + id, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
         
      public  void delete(int id)
        {
            startcon();
            cmd = new SqlCommand("delete from Products where Id=" + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        public DataSet filldata()
        {
            startcon();
            da = new SqlDataAdapter("select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet select(int id)
        {
            startcon();
            da = new SqlDataAdapter("select * from Products where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;

        }

        public void category( string CN)
        {
            cmd = new SqlCommand("insert into categories(Categoryname)" +
               "values('" + CN + "')", con);
            cmd.ExecuteNonQuery();
        }
    }

}