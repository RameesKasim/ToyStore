
<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="updateprdct.aspx.cs" Inherits="dealer_updateprdct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
            <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability"></asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ToyStoreConnectionString %>' SelectCommand="SELECT [p_name], [price], [availability], [category] FROM [product_tb]" UpdateCommand="update product_tb set p_name=@p_name, price=@price,availablity=@availablity,category=@category where pid=@pid"></asp:SqlDataSource>
</asp:Content>

