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
    public partial class Accounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Account_create_Click(object sender, EventArgs e)
        {
            int credit, debit;
            credit = Int32.Parse(Credit.Text);
            debit = Int32.Parse(Debit.Text);
            string constring = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Accounts (Credit, Debit) VALUES (@Credit, @Debit)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Credit", credit);
                    cmd.Parameters.AddWithValue("@Debit", debit);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}