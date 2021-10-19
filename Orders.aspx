<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Inventory_management.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 33px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ADD ORDER</h1>
        <hr />
        </div>
    <form id="form1" runat="server">
        <div class="container my-5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
             <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="Product_ID"></asp:Label>


                </td>
                <td class="auto-style4">
                    <asp:TextBox CssClass="form-control" ID="Product_ID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product_ID cannot be left blank" ControlToValidate="Product_ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="Supplier_ID"></asp:Label>
</td>
                <td class="auto-style4">
                    <asp:TextBox CssClass="form-control" ID="Supplier_ID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Supplier_ID cannot be left blank" ControlToValidate="Supplier_ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
             <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="Order_date"></asp:Label>

                </td>
                <td class="auto-style4">
                    <asp:TextBox CssClass="form-control"  ID="Order_date" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Need to select Order date" ControlToValidate="Order_date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label4" runat="server" Text="Delivery_date"></asp:Label>
</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="Delivery_date" runat="server" textmode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Need to fill delivery date" ControlToValidate="Delivery_date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="Order" runat="server" Text="Submit" OnClick="Order_Click" />
        <div class="container">
  <div class="row">
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewOrders.aspx">View Your Data</asp:HyperLink>
        </p>
    </div>
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/homepage.aspx">Go back to Home</asp:HyperLink>
        </p>
    </div>
  </div>
</div>
</div>
    </form>
</body>
</html>
