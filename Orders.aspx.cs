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
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Order_Click(object sender, EventArgs e)
        {
            string order, delivery, Product_id, Supplier_id;
            order = Order_date.Text;
            Product_id = Product_ID.Text;
            Supplier_id = Supplier_ID.Text;
            delivery = Delivery_date.Text;
            string constring = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Orders (Product_ID, Supplier_ID, Order_date, Delivery_date) VALUES (@Product_ID, @Supplier_ID, @Order_date, @Delivery_date)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Product_ID", Product_id);
                    cmd.Parameters.AddWithValue("@Supplier_ID", Supplier_id);
                    cmd.Parameters.AddWithValue("@Order_date", order);
                    cmd.Parameters.AddWithValue("@Delivery_date", delivery);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}