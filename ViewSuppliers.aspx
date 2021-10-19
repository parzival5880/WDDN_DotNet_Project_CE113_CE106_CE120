<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSuppliers.aspx.cs" Inherits="Inventory_management.ViewSuppliers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventory_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Suppliers] WHERE [Supplier_ID] = @Supplier_ID" InsertCommand="INSERT INTO [Suppliers] ([Supplier_ID], [Name], [Address], [Account]) VALUES (@Supplier_ID, @Name, @Address, @Account)" SelectCommand="SELECT * FROM [Suppliers]" UpdateCommand="UPDATE [Suppliers] SET [Name] = @Name, [Address] = @Address, [Account] = @Account WHERE [Supplier_ID] = @Supplier_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Supplier_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Supplier_ID" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Account" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Account" Type="Int32" />
                    <asp:Parameter Name="Supplier_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Supplier_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnRowDataBound="GridView1_RowDataBound" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier_ID" ReadOnly="True" SortExpression="Supplier_ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Account" HeaderText="Account" SortExpression="Account" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Supplier.aspx">Add Supplier</asp:HyperLink>
        </p>
    </form>
</body>
</html>
