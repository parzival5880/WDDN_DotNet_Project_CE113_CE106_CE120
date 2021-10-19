<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Inventory_management.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" >
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ADD PRODUCT</h1>
        <hr />
</div>
    <form id="form1" runat="server">
        <div class="container my-5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="Product_Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox CssClass="form-control" ID="Product_Name" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Product Name required" ControlToValidate="Product_name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox CssClass="form-control" ID="category" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="Product Category required" ControlToValidate="Category" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="Price" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Product price required" ControlToValidate="Price" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label4" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="Quantity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter product quantity" ControlToValidate="Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label5" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="Status" runat="server">
                        <asp:ListItem Value="1">Available</asp:ListItem>
                        <asp:ListItem Value="0">Unavailable</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Product status" ControlToValidate="Status" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
            
        <asp:Button CssClass="btn btn-primary" ID="Pro_create" runat="server" OnClick="Pro_create_Click" Text="Submit" />
            </div>
        <div class="container">
  <div class="row">
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewProducts.aspx">View Your Data</asp:HyperLink>
        </p>
    </div>
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/homepage.aspx">Go back to Home</asp:HyperLink>
        </p>
    </div>
  </div>
</div>
    </form>
</body>
</html>
