using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;

namespace Inventory_management
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    string command = "SELECT * FROM Products WHERE Product_ID = (SELECT MAX(Product_ID) FROM Products)";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    
                }
            }
            catch (Exception err)
            {
                Error1.Text = "Error reading the datastore; ";
                Error1.Text += err.Message;
            }
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    string command1 = "SELECT * FROM Suppliers WHERE Supplier_ID = (SELECT MAX(Supplier_ID) FROM Suppliers)";
                    SqlCommand cmd1 = new SqlCommand(command1, con);
                    con.Open();
                    SqlDataReader rdr1 = cmd1.ExecuteReader();
                    GridView2.DataSource = rdr1;
                    GridView2.DataBind();
                }
            }
            catch (Exception err)
            {
                Error2.Text = "Error reading the datastore; ";
                Error2.Text += err.Message;
            }
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    string command2 = "SELECT * FROM Orders WHERE Order_id = (SELECT MAX(Order_id) FROM Orders)";
                    SqlCommand cmd2 = new SqlCommand(command2, con);
                    con.Open();
                    SqlDataReader rdr2 = cmd2.ExecuteReader();
                    GridView3.DataSource = rdr2;
                    GridView3.DataBind();

                }
            }
            catch (Exception err)
            {
                Error3.Text = "Error reading the datastore;";
                Error3.Text += err.Message;
            }

            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) As Count FROM Products", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        object o = cmd.ExecuteScalar();
                        if (o != null)
                        {
                            Product.Text = "Total No of Products: " + o.ToString();
                        }
                        con.Close();
                    }

                }
            }
            catch (Exception err)
            {
                Error4.Text = "Error reading the datastore;";
                Error4.Text += err.Message;
            }
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) As Count FROM Suppliers", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        object o = cmd.ExecuteScalar();
                        if (o != null)
                        {
                            Supplier.Text = "Total No of Suppliers: " + o.ToString();
                        }
                        con.Close();
                    }

                }
            }
            catch (Exception err)
            {
                Error5.Text = "Error reading the datastore;";
                Error5.Text += err.Message;
            }
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) As Count FROM Orders", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        object o = cmd.ExecuteScalar();
                        if (o != null)
                        {
                            Order.Text = "Total No of Orders: " + o.ToString();
                        }
                        con.Close();
                    }

                }
            }
            catch (Exception err)
            {
                Error6.Text = "Error reading the datastore;";
                Error6.Text += err.Message;
            }
        }
    }
}