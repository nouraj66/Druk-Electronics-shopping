<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="WebApplication8.admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <h2>View Orders</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        OnRowCommand="GridView1_RowCommand" CssClass="gridview-table" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Amount">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Date">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="gridview-dropdown">
    <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
    <asp:ListItem Text="Accept" Value="Accept"></asp:ListItem>
    <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
</asp:DropDownList>
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="gridview-update-btn"
                        CommandArgument='<%# Eval("Id") %>' CommandName="UpdateStatus" Text="Update" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>