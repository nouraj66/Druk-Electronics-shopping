<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication8.contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Druk Electronics - Contact</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/templatemo.css"/>
    <link rel="stylesheet" href="assets/css/custom.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap"/>
    <link rel="stylesheet" href="assets/css/fontawesome.min.css"/>
</head>

<body>
    <form id="form1" runat="server">
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="nouraj@gmail.com">Druk@elecronics.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                         <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored">
                            <i class="fab fa-facebook-f fa-sm fa-fw me-2"></i>
                        </a>
                        <a class="text-light" href="https://www.instagram.com/" target="_blank">
                            <i class="fab fa-instagram fa-sm fa-fw me-2"></i>
                        </a>
                        <a class="text-light" href="https://twitter.com/" target="_blank">
                            <i class="fab fa-twitter fa-sm fa-fw me-2"></i>
                        </a>
                        <a class="text-light" href="https://www.linkedin.com/" target="_blank">
                            <i class="fab fa-linkedin fa-sm fa-fw"></i>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->

        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                    Druk Electronics
                </a>
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="WebForm1.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.aspx">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="shop.aspx">Shop</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.aspx">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Signup.aspx">Sign Up</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.aspx">Login</a>
                            </li>
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
                        <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                            <i class="fa fa-fw fa-search text-dark mr-2"></i>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="cart.aspx">
                            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="checkout.aspx">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Header -->

        <!-- Modal -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Contact Form -->
        <div class="container py-5">
            <div class="row py-5">
                <asp:Panel runat="server" CssClass="col-md-9 m-auto">
                    <div class="row">
                        <div class="form-group col-md-6 mb-3">
                            <label for="name">Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control mt-1" Placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6 mb-3">
                            <label for="email">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mt-1" Placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="subject">Subject</label>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control mt-1" Placeholder="Subject"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="message">Message</label>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control mt-1" TextMode="MultiLine" Placeholder="Message" Rows="8"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col text-end mt-2">
                            <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" />
                        </div>
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </div>
                </asp:Panel>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-dark" id="tempaltemo_footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-success border-bottom pb-3 border-light logo">Druk Electronics</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><i class="fas fa-map-marker-alt fa-fw"></i>Rajkot Rk University</li>
                            <li><i class="fa fa-phone fa-fw"></i><a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a></li>
                            <li><i class="fa fa-envelope fa-fw"></i><a class="text-decoration-none" href="mailto:info@company.com">nouraj@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Luxury</a></li>
                            <li><a class="text-decoration-none" href="#">Men's Needs</a></li>
                            <li><a class="text-decoration-none" href="#">Men's Watches</a></li>
                            <li><a class="text-decoration-none" href="#">Women's Needs</a></li>
                            <li><a class="text-decoration-none" href="#">Popular Gadgets</a></li>
                            <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                            <li><a class="text-decoration-none" href="#">Sport Watches</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Home</a></li>
                            <li><a class="text-decoration-none" href="#">About Us</a></li>
                            <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                            <li><a class="text-decoration-none" href="#">FAQs</a></li>
                            <li><a class="text-decoration-none" href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row text-light mb-4">
                    <div class="col-12 mb-3">
                        <div class="w-100 my-3 border-top border-light"></div>
                    </div>
                    <div class="col-auto me-auto">
                        <ul class="list-inline text-left footer-icons">
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/">
                                    <i class="fab fa-facebook-f fa-lg fa-fw"></i>
                                </a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/">
                                    <i class="fab fa-instagram fa-lg fa-fw"></i>
                                </a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/">
                                    <i class="fab fa-twitter fa-lg fa-fw"></i>
                                </a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/">
                                    <i class="fab fa-linkedin fa-lg fa-fw"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="subscribeEmail">Email address</label>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                            <div class="input-group-text btn-success text-light">Subscribe</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w-100 bg-black py-3">
                <div class="container">
                    <div class="row pt-2">
                        <div class="col-12">
                            <p class="text-left text-light">Copyright &copy; 2021 Company Name by NourajAdhikari</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
    </form>
</body>
</html>