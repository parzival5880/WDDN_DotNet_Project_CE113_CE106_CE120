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
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Pro_create_Click(object sender, EventArgs e)
        {
            string Product_name, quantity, price, Category;
            string status;
            Product_name = Product_Name.Text;
            quantity = Quantity.Text;
            price = Price.Text;
            Category = category.Text;
            status = Status.SelectedItem.Text;
            string constring = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Products (Name, Category, Price, Quantity, Status) VALUES (@Name, @Category, @Price, @Quantity, @Status)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Name", Product_name);
                    cmd.Parameters.AddWithValue("@Category", Category);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.Parameters.AddWithValue("@Quantity", quantity);
                    cmd.Parameters.AddWithValue("@Status", status);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}