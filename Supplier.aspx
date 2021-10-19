<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="Inventory_management.Supplier" %>

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
        <h1>ADD SUPPLIER</h1>
        <hr />
        </div>
    <form id="form1" runat="server">
        <div class="container my-5">
        <div>
            <table class="auto-style1">
                <tr>
                    <td> 
                        <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="Supplier Name"></asp:Label>
</td>
                    <td>
                        <asp:TextBox ID="Supplier_Name" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Provide Supplier name" ControlToValidate="Supplier_Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="Address"></asp:Label>
</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Address" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please provide Supplier Address" ControlToValidate="Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"> 
                        <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="Account Number"></asp:Label>
</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Account_number" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insert the account number of the supplier" ControlToValidate="Account_number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button CssClass="btn btn-primary" ID="Supplier_create" runat="server" OnClick="Supplier_create_Click" Text="Submit" />
        <div class="container">
  <div class="row">
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewSuppliers.aspx">View Your Data</asp:HyperLink>
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
