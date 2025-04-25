<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admlog.aspx.cs" Inherits="WebApplication8.admin.admlog" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="card form-container">
            <div class="card-header text-center">
                <h2>Admin Login</h2>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <asp:Label runat="server" Text="Email:" CssClass="form-label" />
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email" Required="true"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label runat="server" Text="Password:" CssClass="form-label" />
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" Required="true"></asp:TextBox>
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" OnClick="btnLogin_Click" />
                    </div>

                    <div class="text-center mt-3">
                        <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="adminregister.aspx" CssClass="register-link">Not Registered? Click here!</asp:HyperLink>
                    </div>
                    
                    <div class="text-center mt-2">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message-label"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>