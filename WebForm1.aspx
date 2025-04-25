<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav" >

                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item"><a class="nav-link" href="Webform1.aspx">Home</a> </li>
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

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
           <!-- <form action="" method="get" class="modal-content modal-body border-0 p-0"> -->
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
            </div>
           <!-- </form> -->
        </div>
</div>



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>Druk</b> Electronics</h1>
                                <h3 class="h2">ll the best things for you need</h3>
                                <p>
                                    Druk Electronics  is an eCommerce  website made for .net asp project.
                                    Created by Nouraj and Deepak
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_02.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Your needs are what we work for!</h1>
                                <h3 class="h2">Best Gadgets for you</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_03.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Fullfil your needs!</h1>
                                <h3 class="h2">You Work for it so get it what you want</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev"><i class="fas fa-chevron-left"></i></a><a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next"><i class="fas fa-chevron-right"></i></a>
</div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Best Deals on products!</h1>
                <p>
                    We select of all the products which we see is a wonderful for All!
                </p>
            </div>
        </div>
        <div class="row text-center d-flex justify-content-center">
            <div class="col-12 col-md-4 p-3">
                <a href="shop.aspx">
                <img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="mt-3 mb-3">Mobile</h5>
                <asp:Button ID="Button1" runat="server" Text="Go shop" CssClass="btn btn-success" OnClick="Button1_Click" />
            </div>
            <div class="col-12 col-md-4 p-3">
                <a href="shop.aspx">
                <img src="./assets/img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="mt-3 mb-3">Laptop</h5>
                <asp:Button ID="Button2" runat="server" Text="Go shop" CssClass="btn btn-success" OnClick="Button2_Click" />
            </div>
            <div class="col-12 col-md-4 p-3">
                <a href="shop.aspx">
                <img src="./assets/img/category_img_03.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="mt-3 mb-3">Accessories</h5>
                <asp:Button ID="Button3" runat="server" Text="Go shop" CssClass="btn btn-success" OnClick="Button3_Click" />
            </div>
        </div>
</section>
</asp:Content>


