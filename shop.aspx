<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebApplication8.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="custom.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="text">Available Products</h2>
    
    <asp:Label runat="server" Text="Filter by Category"></asp:Label>
    <asp:DropDownList runat="server" ID="ddlCategories" AutoPostBack="True" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
        <asp:ListItem Text="-- Select Category --" Value="0"></asp:ListItem>
    </asp:DropDownList>

    <div class="product-container">
        <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="dlProducts_ItemCommand" OnSelectedIndexChanged="dlProducts_SelectedIndexChanged" Width="1023px">
            <ItemTemplate>
                <div class="product-card">
                <img src='<%# ResolveUrl("~/admin/" + Eval("ImageUrl")) %>' alt='<%# Eval("ProductName") %>' height="100" width="100">
                    <div class="product-info">
                        <h4><%# Eval("ProductName") %></h4>
                        <span>Price: ₹<%# Eval("Price") %></span></div>

            <asp:HyperLink ID="lnkProductDetails" runat="server"
             NavigateUrl='<%# "ProductDetails.aspx?Id=" + Eval("Id") %>'
                Text="View Details" CssClass="view-details-link"></asp:HyperLink>

                    <div class="product-buttons">
                        <asp:LinkButton ID="btnBuyNow" runat="server" CssClass="buy-btn"
                            CommandName="BuyNow"
                            CommandArgument='<%# Eval("Id") %>'>Buy Now</asp:LinkButton>

                        <asp:LinkButton ID="btnAddToCart" runat="server" CssClass="cart-btn"
                            CommandName="AddToCart"
                            CommandArgument='<%# Eval("Id") %>'>Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="pagination-controls">
        <asp:Button ID="btnPrev" runat="server" Text="Previous" OnClick="btnPrev_Click" />
        <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <title>Druk Electronics</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
                    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
                </head>
    <body>
    <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i><a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">drukelectroincs@gmail.com</a> <i class="fa fa-phone mx-2"></i><a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">97587223</a>
                        <asp:Label ID="lblUser" runat="server" Font-Bold="true" ForeColor="white"></asp:Label>
                    </div>
                    <div>
                        <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a><a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a><a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a><a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    </div>
                </div>
            </div>
        </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">Druk Electronics </a>
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item"><a class="nav-link" href="WebForm1.aspx">Home</a> </li>
                            <li class="nav-item"><a class="nav-link" href="about.aspx">About</a> </li>
                            <li class="nav-item"><a class="nav-link" href="shop.aspx">Shop</a> </li>
                            <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a> </li>
                            <li class="nav-item"><a class="nav-link" href="Signup.aspx">Sign Up</a> </li>
                            <li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a> </li>
                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">
                        <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                            <div class="input-group">
                                <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                                <div class="input-group-text">
                                    <i class="fa fa-fw fa-search"></i>
                                </div>
                            </div>
                        </div>
                        <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search"><i class="fa fa-fw fa-search text-dark mr-2"></i></a><a class="nav-icon position-relative text-decoration-none" href="cart1.aspx"><i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i><span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span></a><a class="nav-icon position-relative text-decoration-none" href="delivered.aspx"><i class="fa fa-fw fa-user text-dark mr-3"></i><span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span></a><a class="nav-icon position-relative text-decoration-none" href="admin/admlog.aspx"><i class="fa fa-fw fa-cog text-dark mr-3"></i><span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span></a>
                    </div>
                </div>
            </div>
        </nav>
    <!-- Close Header -->
            </asp:Content>


