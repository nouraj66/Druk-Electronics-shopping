<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebApplication8.admin.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <link rel="stylesheet" type="text/css" href="assets/css/checkout.css" />

   <h2 class="text">Checkout</h2>  

    <div class="checkout-form">
        <label>Name:</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />

        <label>Address:</label>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><br />

        <label>Phone:</label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />

        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

       <label>Payment Method:</label>
<asp:CheckBoxList ID="chkPaymentMethod" runat="server">
    <asp:ListItem Text="Cash on Delivery" Value="COD"></asp:ListItem>
    <asp:ListItem Text="Online Payment" Value="Online"></asp:ListItem>
</asp:CheckBoxList><br />

        <h3>Total Amount: ₹<asp:Label ID="lblTotalAmount" runat="server" Text="0"></asp:Label></h3>

        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" CssClass="btn-order" OnClick="btnPlaceOrder_Click" />
    </div>
</asp:Content>