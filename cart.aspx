<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication8.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="text">Your Cart</h2>
    
    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" CssClass="cart-table" OnRowCommand="gvCart_RowCommand">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' height="50" width="50" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
            <asp:BoundField DataField="Price" HeaderText="Price (₹)" />
            
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>' CssClass="quantity-box" />
                    <asp:Button ID="btnUpdateQty" runat="server" Text="Update" CssClass="update-btn" CommandName="UpdateQuantity" CommandArgument='<%# Eval("ProductId") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="Total" HeaderText="Total (₹)" />
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' CssClass="remove-btn" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnCheckout" runat="server" Text="Proceed to Checkout" CssClass="checkout-btn" OnClick="btnCheckout_Click" />
</asp:Content>