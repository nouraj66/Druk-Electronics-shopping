<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="WebApplication8.admin.adminregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Admin Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="admin.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <div class="card form-container">
            <div class="card-header text-center">
                <h2>Admin Registration</h2>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <asp:Label runat="server" Text="Full Name:" CssClass="form-label" />
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter full name" Required="true"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label runat="server" Text="Email:" CssClass="form-label" />
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email" Required="true"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label runat="server" Text="Phone No:" CssClass="form-label" />
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone Number" Required="true"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label runat="server" Text="Password:" CssClass="form-label" />
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" Required="true"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label runat="server" Text="Confirm Password:" CssClass="form-label" />
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password" Required="true"></asp:TextBox>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" ForeColor="Red" Display="Dynamic" CssClass="error-message"/>
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-lg" OnClick="btnRegister_Click"  />
                    </div>

                    <div class="text-center mt-3">
                        <a href="admlog.aspx">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Already registered? Click here!" CssClass="login-link"/>
                        </a>
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

