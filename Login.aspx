<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication8.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/css/s1.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="login-container">
        <h2>Login</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
        
        <div class="form-group">
            <label for="txtemail">Email</label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtemail"
                ErrorMessage="Email is required" CssClass="error-message" ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail"
                ErrorMessage="Invalid email format" CssClass="error-message" ForeColor="Red"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" Display="Dynamic" />
        </div>

        <div class="form-group">
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required" CssClass="error-message" ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password must be at least 6 characters long" CssClass="error-message" ForeColor="Red"
                ValidationExpression="^.{6,}$" Display="Dynamic" />
        </div>

        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success" OnClick="Button1_Click" />
        
        <div class="form-footer">
            Not registered? <a href="Signup.aspx">Sign up here</a>.
        </div>
    </div>
</asp:Content>