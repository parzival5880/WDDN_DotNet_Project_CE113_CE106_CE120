<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="Inventory_management.ViewOrders" %>

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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventory_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [Order_Id] = @Order_Id" InsertCommand="INSERT INTO [Orders] ([Order_Id], [Order_date], [Delivery_date], [Product_ID], [Supplier_ID]) VALUES (@Order_Id, @Order_date, @Delivery_date, @Product_ID, @Supplier_ID)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Order_date] = @Order_date, [Delivery_date] = @Delivery_date, [Product_ID] = @Product_ID, [Supplier_ID] = @Supplier_ID WHERE [Order_Id] = @Order_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Order_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Order_Id" Type="Int32" />
                    <asp:Parameter Name="Order_date" Type="DateTime" />
                    <asp:Parameter Name="Delivery_date" Type="DateTime" />
                    <asp:Parameter Name="Product_ID" Type="Int32" />
                    <asp:Parameter Name="Supplier_ID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Order_date" Type="DateTime" />
                    <asp:Parameter Name="Delivery_date" Type="DateTime" />
                    <asp:Parameter Name="Product_ID" Type="Int32" />
                    <asp:Parameter Name="Supplier_ID" Type="Int32" />
                    <asp:Parameter Name="Order_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Order_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" ReadOnly="True" SortExpression="Order_Id" />
                    <asp:BoundField DataField="Order_date" HeaderText="Order_date" SortExpression="Order_date" />
                    <asp:BoundField DataField="Delivery_date" HeaderText="Delivery_date" SortExpression="Delivery_date" />
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                    <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier_ID" SortExpression="Supplier_ID" />
                </Columns>
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
        </div>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Orders.aspx">Add orders</asp:HyperLink>
        </p>
    </form>
</body>
</html>
