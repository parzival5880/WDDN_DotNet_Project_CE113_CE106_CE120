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
    public partial class Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Supplier_create_Click(object sender, EventArgs e)
        {
            string Supplier_name, address, Account;
            Supplier_name = Supplier_Name.Text;
            address = Address.Text;
            Account = Account_number.Text;
            string constring = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Suppliers (Name, Address, Account) VALUES (@Name, @Address, @Account)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Name", Supplier_name);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@Account", Account);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}