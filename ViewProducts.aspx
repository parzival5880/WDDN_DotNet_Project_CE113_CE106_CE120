<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="Inventory_management.ViewProducts" %>

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
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventory_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Product_ID] = @Product_ID" InsertCommand="INSERT INTO [Products] ([Name], [Category], [Price], [Quantity], [Status]) VALUES (@Name, @Category, @Price, @Quantity, @Status)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Category] = @Category, [Price] = @Price, [Quantity] = @Quantity, [Status] = @Status WHERE [Product_ID] = @Product_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Product_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="Quantity" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="Quantity" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Product_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Product.aspx">Add Product</asp:HyperLink>
        </p>
    </form>
</body>
</html>
