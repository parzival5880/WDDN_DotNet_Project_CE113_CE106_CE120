<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="Inventory_management.Accounts" %>

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
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-5">
            <div class="container">
        <h1>ADD ACCOUNT</h1>
        <hr />
                </div>

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="Credit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="Credit" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the credit amount" ControlToValidate="Credit" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="Debit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="Debit" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the debit amount" ControlToValidate="Debit" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button CssClass="btn btn-primary" ID="Account_create" runat="server" Text="Submit" OnClick="Account_create_Click" />
        <div class="container my-5">
  <div class="row">
    <div class="col-sm">
      <p class="auto-style3">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewAccounts.aspx">View Your Data</asp:HyperLink>
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
