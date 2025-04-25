<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication8.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile">
        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
    </div>
     <div class="dashboard-cards">
            <div class="card">
                <h4>Total Order</h4>
                <p>112</p>
            </div>
            <div class="card">
                <h4>Registered Users</h4>
                <p>30</p>
            </div>
            <div class="card">
                <h4>Total Revenue</h4>
                <p>₹400,000</p>
            </div>
        </div>
</asp:Content>
