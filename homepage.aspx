<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Inventory_management.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
@import url('https://fonts.googleapis.com/css2?family=Crimson+Text:ital@1&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Neucha&display=swap');
</style>
    <title>
           Home Page | Inventory management
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid" style="font-family: 'Neucha', cursive;" font-size = "20px;">
       
      <asp:HyperLink class="navbar-brand" NavigateUrl="~/homepage.aspx" runat="server"> Navbar</asp:HyperLink>
      <button class="navbar-toggler" runat="server" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <asp:HyperLink class="nav-link active" runat="server" aria-current="page" NavigateUrl="~/homepage.aspx">Home</asp:HyperLink>
          </li>
          <li class="nav-item">
            <asp:HyperLink class="nav-link" runat="server" NavigateUrl="~/Product.aspx">Products</asp:HyperLink>
          </li>
          <li class="nav-item">
            <asp:HyperLink runat="server" class="nav-link" NavigateUrl="~/Supplier.aspx">Supplier</asp:HyperLink>
          </li>
          <li class="nav-item">
            <asp:HyperLink runat="server" class="nav-link " NavigateUrl="~/Accounts.aspx">Account</asp:HyperLink>
          </li>
            <li class="nav-item">
            <asp:HyperLink runat="server" class="nav-link " NavigateUrl="~/Orders.aspx">Orders</asp:HyperLink>
          </li>
            <li class="nav-item">
            <asp:HyperLink runat="server" class="nav-link " NavigateUrl="~/Billing.aspx">Bill Generation</asp:HyperLink>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   
    <div class="container">
    <h1>Dashboard</h1>
    <hr />
</div>
<div class="container my-5">
    <div class="row">
      <div class="col-6 col-md-4">
        <div style="background-color: #ff4040;height: 175px;padding: 5px 15px;font-size: 30px; font-family: 'Crimson Text', serif;">
           <asp:Label runat="server" ID="Product" class="fw-bold">0</asp:Label>
           <p class="fw-bold">Total Product in Inventory</p>
                       <asp:Label runat="server" ID="Error4" class="fw-bold"></asp:Label>

          </div>
      </div>
      <div class="col-6 col-md-4">
        <div style="background-color: #0d6efd;height: 175px;padding: 5px 15px;font-size: 30px; font-family: 'Crimson Text', serif;">
           <asp:Label runat="server" ID="Supplier" class="fw-bold">0</asp:Label>
           <p class="fw-bold">Total Supplier to our Shops</p>
                       <asp:Label runat="server" ID="Error5" class="fw-bold"></asp:Label>

          </div>
      </div>
      <div class="col-6 col-md-4">
        <div style="background-color: #ff7818;height: 175px;padding: 5px 15px;font-size: 30px; font-family: 'Crimson Text', serif;">
          <asp:Label runat="server" ID="Order" class="fw-bold">0</asp:Label>

          <p class="fw-bold">Total Order in Inventory</p>
                       <asp:Label runat="server" ID="Error6" class="fw-bold"></asp:Label>

          </div>
      </div>
    </div>
</div>
    <form runat="server">
        <div class="container">
    <h1>Last Product Added</h1>
    <hr />
</div>
    <div class="container" >
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                
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
        <span>
            <asp:Label ID="Error1" runat="server" ></asp:Label>
        </span>
        <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewProducts.aspx">Show all Products</asp:HyperLink>
        <br />
    </div>
        <div class="container">
    <h1>Last Supplier Added</h1>
    <hr />
</div>
    <div class="container" >
        <asp:GridView ID="GridView2" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" >
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        <span>
            <asp:Label ID="Error2" runat="server" ></asp:Label>
        </span>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewSuppliers.aspx">Show all Suppliers</asp:HyperLink>
        <br />
    </div>
        <div class="container">
    <h1>Last Order Added</h1>
    <hr />
</div>
    <div class="container" >
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        <span>
            <asp:Label ID="Error3" runat="server" ></asp:Label>
        </span>  
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewOrders.aspx">Show all Orders</asp:HyperLink>
        <br />
    </div>
    </form>
</body>
</html>
