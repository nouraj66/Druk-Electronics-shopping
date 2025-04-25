<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="viewusers.aspx.cs" Inherits="WebApplication8.admin.viewusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    CssClass="gridview-table"
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
    OnRowCommand="GridView1_RowCommand">
    <HeaderStyle CssClass="gridview-header" />
    <RowStyle CssClass="gridview-row" />
    <AlternatingRowStyle CssClass="gridview-alt-row" />
    <Columns>
        <asp:TemplateField HeaderText="Id">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Fullname">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Fullname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="State">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("State") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="gridview-delete-btn"
                    CommandName="cmd_Delete" OnClick="LinkButton1_Click"
                    CommandArgument='<%# Eval("Id") %>'>Delete</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
  
</asp:Content>
