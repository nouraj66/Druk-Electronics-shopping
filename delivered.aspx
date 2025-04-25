<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delivered.aspx.cs" Inherits="WebApplication8.delivered" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirmation</title>
    <link rel="stylesheet" type="text/css" href="assets/css/costom.css" />
</head>
<body>
    <form runat="server">
        <div class="container">
            <h2>Order Confirmed</h2>
            <asp:Label ID="lblOrderID" runat="server" Font-Bold="true"></asp:Label>

            <div class="gridview-container">
    <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="False" CssClass="table" OnSelectedIndexChanged="gvOrderDetails_SelectedIndexChanged" Width="399px">
        <Columns>
            <asp:TemplateField HeaderText="Order Date">
                <ItemTemplate>
                    <%# Eval("orderdate") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <%# Eval("status") %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>

            <a href="Shop.aspx">Back to Shop</a>
            <br />
            <asp:Button ID="btnlog" runat="server" Text="Logout" CssClass="logout-btn" OnClick="btnLogout_Click" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Report" OnClick="Button1_Click" CssClass="logout-btn" />
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        </div>
    </form>
</body>
</html>