<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication8.about" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Druk Electronics</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/templatemo.css"/>
    <link rel="stylesheet" href="assets/css/custom.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap"/>
    <link rel="stylesheet" href="assets/css/fontawesome.min.css"/>
</head>
<body>
    <!-- Top Navigation -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">nouraj@druk.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    
    <!-- Main Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">Druk Electronics</a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item"><a class="nav-link" href="WebForm1.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="shop.aspx">Shop</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="Signup.aspx">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a></li>
                </ul>
                <div class="navbar align-self-center d-flex">
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute badge rounded-pill bg-light text-dark"></span>
                    </a>
                </div>
            </div>
        </div>
    </nav>
    
    <!-- About Us Section -->
    <div class="container py-5">
        <div class="row h-100 align-items-center py-5">
            <div class="col-lg-6">
                <h1 class="display-4">About Us</h1>
                <p class="lead text-muted">Welcome to Druk Electronics, your number one source for all things you desire.</p>
            </div>
            <div class="col-lg-6 d-none d-lg-block">
                <img src="assets/img/about-hero.svg" alt="" class="img-fluid">
            </div>
        </div>
    </div>
    
    <!-- Footer -->
    <footer class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3">Druk Electronics</h2>
                    <ul class="list-unstyled text-light">
                        <li><i class="fas fa-map-marker-alt"></i> Rajkot RK University</li>
                        <li><i class="fa fa-phone"></i> <a href="tel:010-020-0340" class="text-light">010-020-0340</a></li>
                        <li><i class="fa fa-envelope"></i> <a href="mailto:nouraj@gmail.com" class="text-light">nouraj@gmail.com</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-light text-left">
                        <p>Copyright &copy; 2025 ASP.NET by Nouraj Adhikari</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Scripts -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>

