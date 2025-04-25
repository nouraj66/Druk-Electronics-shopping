<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Addpro.aspx.cs" Inherits="WebApplication8.admin.Addpro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Manage Products
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="mt-3">
            <label class="form-label">Product Name</label>
            <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Description</label>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Price</label>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Image Upload</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>
        <asp:Label runat="server" Text="Item type"></asp:Label>
            <asp:DropDownList runat="server" ID="ddltype" CssClass="dropdown" OnSelectedIndexChanged="ddltype_SelectedIndexChanged">
               <asp:ListItem Text="Laptop" Value="Laptop"></asp:ListItem>
                <asp:ListItem Text="Mobile" Value="Mobile"></asp:ListItem>
                <asp:ListItem Text="Accessories" Value="Accessories"></asp:ListItem>
            </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Add Product" CssClass="btn btn-success" OnClick="Button1_Click" />
    <div>
        <asp:Label ID="message" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
