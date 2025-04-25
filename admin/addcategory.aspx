<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="WebApplication8.admin.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="add-category">
    <asp:Label ID="Label1" runat="server" Text="Add Category Type" CssClass="category-label"></asp:Label>

       <asp:TextBox ID="txtName" runat="server" CssClass="input-field" TextMode="SingleLine"></asp:TextBox>

       <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Add" CssClass="category-button" OnClick="Button1_Click" />
</div>
</asp:Content>
