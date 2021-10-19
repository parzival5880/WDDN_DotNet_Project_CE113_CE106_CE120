<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Inventory_management.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
        <h1>BILL GENERATION</h1>
        <hr />
        </div>
        <div class="container text-center">
            <p>
                If you want to delete an existing item from the bill please select that item from the product list LISTBOX after that click on the button named DELETE ITEM FROM THE BILL 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventory_DatabaseConnectionString %>" SelectCommand="SELECT [Name], [Price], [Quantity], [Status], [Category] FROM [Products]"></asp:SqlDataSource>
            </p>
            </div>
        <div class="container">
            <hr />
        </div>
        <div class="container">
            <p>
               <h2> Avaialble Products List and Quantity</h2>
            </p>
            <div class="text-center">
                <asp:GridView  ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div> 
       </div> 
        <div class="container" >
            <hr />
        </div>
        <br />
        <br />
        <br />

        <div class="container">
            <asp:Label CssClass="form-label"  runat="server" Text="Product List: "></asp:Label>
        <asp:DropDownList ID="ProductList" runat="server" OnSelectedIndexChanged="ProductList_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
            <br />
        <br />
            <asp:Label CssClass="form-label"  runat="server" Text="Included Product List: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox  ID="ListBox1" runat="server" ></asp:ListBox>
            <br />
            <br />
        <br />
        
        <p>
           <asp:Label CssClass="form-label"  runat="server" Text="Price Of The Included Products: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="false" Enabled="false"></asp:ListBox>
        </p>
            <asp:Label runat="server" CssClass="form-label" ID="Label1"></asp:Label>
            <div class="container my-3 mx-5">
  <div class="row">
    <div class="col-sm">
      <p class="auto-style3">
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Item from Bill" />
        </p>
    </div>
    <div class="col-sm">
      <p class="auto-style3">
            <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Total Amount" />
        &nbsp;
        </p>
    </div>
      
      <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx">Go Back to Home</asp:HyperLink>
        </p>
          </div>
  </div>
</div>
            </div>
        <div class="container">
            <h1>BILL RECEIPT</h1>
            <hr />
        </div>
        <div class="container">
            <table class="table">
  <thead>
    <tr>
      <th scope="col">Product Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
	<%=current()%>
    </tr>
      
  </tbody>
</table>
            <table>
                <tr>
          <td>
              <b>
                  PAYABLE AMOUNT: <asp:Label runat="server" CssClass="form-label" ID="Label2"></asp:Label>
              </b>
          </td>
      </tr>
            </table>
        </div>
    </form>
</body>
</html>
