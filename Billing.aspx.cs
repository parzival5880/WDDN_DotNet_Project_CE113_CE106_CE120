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
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ConnectionString = WebConfigurationManager.ConnectionStrings["ConTest"].ConnectionString;
                SqlConnection con = new SqlConnection(ConnectionString);
                string com = "Select * from Products";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ProductList.DataSource = dt;
                ProductList.DataBind();
                ProductList.DataTextField = "Name";
                ProductList.DataValueField = "Price";
                ProductList.DataBind();
            }
        }

        protected void ProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string SelectedText = ProductList.SelectedItem.Text;
            string SelectedValue = ProductList.SelectedItem.Value;
            ListBox1.Items.Add(SelectedText);
            ListBox2.Items.Add(SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int value =  ListBox1.SelectedIndex;
            ListBox1.Items.RemoveAt(value);
            ListBox2.Items.RemoveAt(value);
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int TotalBillAmount = 0;
            foreach(ListItem p in ListBox2.Items)
            {
                string s = p.ToString();
                int value = Int32.Parse(s);
                TotalBillAmount += value;
            }
            Label1.Text = "Total Bill Amount is: " + TotalBillAmount.ToString();
            Label2.Text= "₹" + TotalBillAmount.ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string[] str = new string[25];
            for (int i = 0; i < ListBox1.Items.Count; ++i)
            {
                if (ListBox1.Items[i].Selected == true)
                    str[i] = ListBox1.Items[i].Value;
                else
                    str[i] = "0";
            }
            Session["ListBoxValues"] = str;
            Response.Redirect("PrintBill.aspx");
        }

        public string current()
        {
            string htmlstr = "";
          
            foreach(ListItem b in ListBox1.Items)
            {
                string value = " ";
                string s = b.ToString();
                foreach (ListItem p in ProductList.Items)
                {
                    string str = p.Text;
                    if(String.Equals(s, str))
                    {
                        value = p.Value;
                    }
                }
                htmlstr += "<tr><td>" + s + "</td>" + "<td>" + "₹" + value +  "</td>" + "<td>" + "1" + "</td></tr>";
            }
            return htmlstr;
        }
    }
}