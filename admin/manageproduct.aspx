<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manageproduct.aspx.cs" Inherits="WebApplication8.admin.manageproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
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
    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" />
        <h3>Avilabel Products</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand1">
        <Columns>
            <asp:BoundField HeaderText="Id" />
            <asp:TemplateField HeaderText="ProductName">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageUrl">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' height="100px" width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Type">
                   <ItemTemplate>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Label>
                   </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Update">
                   <ItemTemplate>
                       <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_Update">Update</asp:LinkButton>
                   </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Cmd_Delete">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
</asp:Content>
