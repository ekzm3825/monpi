<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc"%>
<%@ page import="com.dk.monpi.constant.Constants"%>
<%--<script src="<%=Constants.CONTEXT%>/resources/js/page/main/list.js"></script>--%>
<%--

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
--%>
<title>Monster Pizza</title>

<script src="<%=Constants.CONTEXT%>/resources/js/common/ic.js"></script>
<script src="<%=Constants.CONTEXT%>/resources/js/common/ajax-global.js"></script>

<!-- Bootstrap -->
<link href="<%=Constants.CONTEXT%>/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Web Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">

<!-- Template CSS Files  -->
<link href="<%=Constants.CONTEXT%>/resources/css/magnific-popup.css" rel="stylesheet">
<link href="<%=Constants.CONTEXT%>/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<%=Constants.CONTEXT%>/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=Constants.CONTEXT%>/resources/css/style.css" rel="stylesheet">
<link href="<%=Constants.CONTEXT%>/resources/css/responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<%--

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=Constants.CONTEXT%>/resources/images/fav-144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=Constants.CONTEXT%>/resources/images/fav-114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=Constants.CONTEXT%>/resources/images/fav-72.png">
<link rel="apple-touch-icon-precomposed" href="<%=Constants.CONTEXT%>/resources/images/fav-57.png">
<link rel="shortcut icon" href="<%=Constants.CONTEXT%>/resources/images/fav.png">
--%>

<div id="content">
   <%--<body>--%>
   <!-- Header Wrap Starts -->
   <%--<header class="header-wrap">--%>
      <!-- Navbar Starts -->
      <nav id="nav" class="navbar navbar-default flat" role="navigation">
         <!-- Container Starts -->
         <div class="container">
            <!-- Navbar Header Starts -->
            <div class="navbar-header">
               <button type="button" class="navbar-toggle animation" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </button>
               <a href="<%=Constants.CONTEXT%>/main.do" class="navbar-brand">
                  <img src="<%=Constants.CONTEXT%>/resources/images/logo.png" style="width:250px" alt="Monster Pizza" class="img-responsive">
               </a>
            </div>
            <!-- Navbar Header Ends -->
            <!-- Navbar Collapse Starts -->
            <div class="navbar-collapse collapse">
               <ul class="nav navbar-nav navbar-right animation" id="menubar">
                  <li class="current"><a href="index.html">Home</a></li>
                  <li><a href="about.html">About</a></li>
                  <li><a href="menu.html">Menu</a></li>
                  <li class="dropdown">
                     <a href="gallery.html" class="dropdown-toggle" data-toggle="dropdown">Gallery</a>
                     <ul class="dropdown-menu flat">
                        <li><a tabindex="-1" href="gallery.html">Gallery Col 2</a></li>
                        <li><a tabindex="-1" href="gallery-col3.html">Gallery Col 3</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="events.html" class="dropdown-toggle" data-toggle="dropdown">Events</a>
                     <ul class="dropdown-menu flat">
                        <li><a tabindex="-1" href="events.html">Events</a></li>
                        <li><a tabindex="-1" href="events-col2.html">Events Col 2</a></li>
                        <li><a tabindex="-1" href="events-single.html">Events Single</a></li>
                     </ul>
                  </li>
                  <li><a href="reservation.html">Reservation</a></li>
                  <li><a href="contact.html">Contact</a></li>
               </ul>
            </div>
            <!-- Navbar Collapse Ends -->
         </div>
         <!-- Container Ends -->
      </nav>
      <!-- Navbar Ends -->
      <!-- Top Bar Starts -->
      <%----%>
      <!-- Top Bar Ends -->

      <!-- Slider Starts -->
      <div id="main-slider" class="carousel slide carousel-fade" data-ride="carousel">
         <!-- Wrapper For Slides Starts -->
         <div class="carousel-inner text-center">
            <!-- Slide #1 Starts -->
            <div class="item active">
               <img src="<%=Constants.CONTEXT%>/resources/images/slider/slider-img1-b.jpg" alt="Slide 1" class="img-responsive">
               <div class="carousel-caption hidden-xs">
                  <!-- Nested Row Starts -->
                  <div class="row">
                     <div class="col-lg-5 col-xs-8 col-lg-offset-7 col-xs-offset-4">
                        <%--<div class="content-box">
                           <img src="<%=Constants.CONTEXT%>/resources/images/icons/heart.png" alt="Heart">
                           <h2>Start The Day With Great Taste</h2>
                           <h4>A Premium Coffee Bootstrap HTML Template. Exclusive In WrapBoostrap</h4>
                        </div>--%>
                     </div>
                  </div>
                  <!-- Nested Row Ends -->
               </div>
            </div>
            <!-- Slide #1 Ends -->
            <!-- Slide #2 Starts -->
            <div class="item">
               <img src="<%=Constants.CONTEXT%>/resources/images/slider/slider-img2-b.jpg" alt="Slide 2" class="img-responsive">
               <div class="carousel-caption hidden-xs">
                  <!-- Nested Row Starts -->
                  <div class="row">
                     <div class="col-lg-5 col-xs-8 col-lg-offset-7 col-xs-offset-4">
                        <%--<div class="content-box">
                           <img src="<%=Constants.CONTEXT%>/resources/images/icons/heart.png" alt="Heart">
                           <h2>Heading #2</h2>
                           <h4>A Premium Coffee Bootstrap HTML Template. Exclusive In WrapBoostrap</h4>
                        </div>--%>
                     </div>
                  </div>
                  <!-- Nested Row Ends -->
               </div>
            </div>
            <!-- Slide #2 Ends -->
            <!-- Slide #3 Starts -->
            <div class="item">
               <img src="<%=Constants.CONTEXT%>/resources/images/slider/slider-img3-b.jpg" alt="Slide 3" class="img-responsive">
               <div class="carousel-caption hidden-xs">
                  <!-- Nested Row Starts -->
                  <div class="row">
                     <div class="col-lg-5 col-xs-8 col-lg-offset-7 col-xs-offset-4">
                        <%--<div class="content-box">
                           <img src="<%=Constants.CONTEXT%>/resources/images/icons/heart.png" alt="Heart">
                           <h2>Heading #3</h2>
                           <h4>A Premium Coffee Bootstrap HTML Template. Exclusive In WrapBoostrap</h4>
                        </div>--%>
                     </div>
                  </div>
                  <!-- Nested Row Ends -->
               </div>
            </div>
            <!-- Slide #3 Ends -->
         </div>
         <!-- Wrapper For Slides Ends -->
         <%--<!-- Control Starts -->
         <a class="left carousel-control animation hidden-xs" id="prev" href="#main-slider" role="button" data-slide="prev">
            <span class="fa fa-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
         </a>
         <a class="right carousel-control animation hidden-xs" id="next" href="#main-slider" role="button" data-slide="next">
            <span class="fa fa-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
         </a>
         <!-- Control Ends -->--%>
      </div>
      <!-- Slider Ends -->
   <%--</header>--%>
   <!-- Header Wrap Ends -->
   <!-- Intro Section Starts -->
   <section class="section section-home-intro">
      <!-- Nested Container Starts -->
      <div class="container text-center">
         <!-- Heading Starts -->
         <h3 class="sub-heading text-center text-light">Introducing top coffee ingredients</h3>
         <h1 class="text-center">With a whole lot of happiness</h1>
         <!-- Heading Ends -->
         <!-- Spacer Starts -->
         <div class="spacer-small"></div>
         <!-- Spacer Ends -->
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- Welcome Content Starts -->
            <div class="col-sm-6 col-xs-12">
               <img src="<%=Constants.CONTEXT%>/resources/images/icons/cutlery.jpg" alt="Cutlery" class="img-center">
               <h2 class="text-normal"><span class="text-light">About</span> Coffee Shop</h2>
               <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
               <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
               <p><a href="#" class="btn btn-outline animation text-bold">More About Us</a></p>
            </div>
            <!-- Welcome Content Ends -->
            <!-- Spacer For Small Screen Starts -->
            <div class="col-xs-12 hidden visible-xs">
               <div class="spacer-small"></div>
            </div>
            <!-- Spacer For Small Screen Ends -->
            <!-- Welcome Image Starts -->
            <div class="col-sm-6 col-xs-12">
               <img src="<%=Constants.CONTEXT%>/resources/images/home/image1.jpg" alt="Image" class="img-responsive img-center-xs br-5">
            </div>
            <!-- Welcome Image Ends -->
         </div>
         <!-- Nested Row Ends -->
         <!-- Spacer Starts -->
         <div class="spacer-tiny"></div>
         <!-- Spacer Ends -->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Intro Section Ends -->
   <!-- Three Box Starts -->
   <section class="section-home-three-boxes">
      <!-- Nested Container Starts -->
      <div class="container-fluid text-center">
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- Box #1 Starts -->
            <div class="col-sm-4 col-xs-12">
               <div class="box-1">
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/box-img1.jpg" alt="Image" class="img-responsive img-center box1-img animation-1">
                  <div class="hover-content">
                     <img src="<%=Constants.CONTEXT%>/resources/images/icons/coffee-cup.png" alt="Coffee Cup" class="img-center box-1-icon">
                     <h3>Hot Beverages</h3>
                     <h6 class="view-more-link"><a href="#">View More</a></h6>
                  </div>
               </div>
            </div>
            <!-- Box #1 Ends -->
            <!-- Box #2 Starts -->
            <div class="col-sm-4 col-xs-12">
               <div class="box-1">
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/box-img2.jpg" alt="Image" class="img-responsive img-center box1-img animation-1">
                  <div class="hover-content">
                     <img src="<%=Constants.CONTEXT%>/resources/images/icons/cool-glass.png" alt="Cool Glass" class="img-center box-1-icon">
                     <h3>Classic Cool's</h3>
                     <h6 class="view-more-link"><a href="#">View More</a></h6>
                  </div>
               </div>
            </div>
            <!-- Box #2 Ends -->
            <!-- Box #3 Starts -->
            <div class="col-sm-4 col-xs-12">
               <div class="box-1">
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/box-img3.jpg" alt="Image" class="img-responsive img-center box1-img animation-1">
                  <div class="hover-content">
                     <img src="<%=Constants.CONTEXT%>/resources/images/icons/sandwich.png" alt="Cool Glass" class="img-center box-1-icon">
                     <h3>Sandwiches</h3>
                     <h6 class="view-more-link"><a href="#">View More</a></h6>
                  </div>
               </div>
            </div>
            <!-- Box #3 Ends -->
         </div>
         <!-- Nested Row Ends -->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Three Box Ends -->
   <!-- Product Section Starts -->
   <section class="section section-home-product">
      <!-- Nested Container Starts -->
      <div class="container text-center-xs">
         <!-- Heading Starts -->
         <h3 class="sub-heading text-center text-light">Our Coffee is so fresh it may just make you blush.</h3>
         <h1 class="text-center">Fresh flavoured Coffee</h1>
         <!-- Heading Ends -->
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- Product #1 Starts -->
            <div class="col-md-6 col-xs-12">
               <div class="home-product-col">
                  <!-- Product Nested Row Starts -->
                  <div class="row">
                     <!-- Product Details Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <h5><a href="#">Strawberry Juice Refresher</a></h5>
                        <p>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.
                        </p>
                        <p class="price">
                           Price : <span class="price-new text-spl-color">$3.99</span>
                        </p>
                        <ul class="list-unstyled list-inline ratings">
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <div class="btn-group">
                           <button type="button" class="btn btn-fb animation"><i class="fa fa-thumbs-o-up"></i> Like</button>
                           <button type="button" class="btn btn-twitter animation"><i class="fa fa-twitter"></i> Tweet</button>
                           <button type="button" class="btn btn-secondary animation">More Info <i class="fa fa-arrow-circle-right"></i></button>
                        </div>
                     </div>
                     <!-- Product Details Ends -->
                     <!-- Product Image Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <img src="<%=Constants.CONTEXT%>/resources/images/home/image2.jpg" alt="Blog Image" class="img-responsive img-center-sm img-center-xs br-5">
                     </div>
                     <!-- Product Image Ends -->
                  </div>
                  <!-- Product Nested Row Ends -->
               </div>
            </div>
            <!-- Product #1 Ends -->
            <!-- Product #2 Starts -->
            <div class="col-md-6 col-xs-12">
               <div class="home-product-col">
                  <!-- Product Nested Row Starts -->
                  <div class="row">
                     <!-- Product Details Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <h5><a href="#">Strawberry Juice Refresher</a></h5>
                        <p>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.
                        </p>
                        <p class="price">
                           Price : <span class="price-new text-spl-color">$3.99</span>
                        </p>
                        <ul class="list-unstyled list-inline ratings">
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <div class="btn-group">
                           <button type="button" class="btn btn-fb animation"><i class="fa fa-thumbs-o-up"></i> Like</button>
                           <button type="button" class="btn btn-twitter animation"><i class="fa fa-twitter"></i> Tweet</button>
                           <button type="button" class="btn btn-secondary animation">More Info <i class="fa fa-arrow-circle-right"></i></button>
                        </div>
                     </div>
                     <!-- Product Details Ends -->
                     <!-- Product Image Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <img src="<%=Constants.CONTEXT%>/resources/images/home/image3.jpg" alt="Blog Image" class="img-responsive img-center-sm img-center-xs br-5">
                     </div>
                     <!-- Product Image Ends -->
                  </div>
                  <!-- Product Nested Row Ends -->
               </div>
            </div>
            <!-- Product #2 Ends -->
            <!-- Product #3 Starts -->
            <div class="col-md-6 col-xs-12">
               <div class="home-product-col">
                  <!-- Product Nested Row Starts -->
                  <div class="row">
                     <!-- Product Details Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <h5><a href="#">Strawberry Juice Refresher</a></h5>
                        <p>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.
                        </p>
                        <p class="price">
                           Price : <span class="price-new text-spl-color">$3.99</span>
                        </p>
                        <ul class="list-unstyled list-inline ratings">
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <div class="btn-group">
                           <button type="button" class="btn btn-fb animation"><i class="fa fa-thumbs-o-up"></i> Like</button>
                           <button type="button" class="btn btn-twitter animation"><i class="fa fa-twitter"></i> Tweet</button>
                           <button type="button" class="btn btn-secondary animation">More Info <i class="fa fa-arrow-circle-right"></i></button>
                        </div>
                     </div>
                     <!-- Product Details Ends -->
                     <!-- Product Image Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <img src="<%=Constants.CONTEXT%>/resources/images/home/image4.jpg" alt="Blog Image" class="img-responsive img-center-sm img-center-xs br-5">
                     </div>
                     <!-- Product Image Ends -->
                  </div>
                  <!-- Product Nested Row Ends -->
               </div>
            </div>
            <!-- Product #3 Ends -->
            <!-- Product #4 Starts -->
            <div class="col-md-6 col-xs-12">
               <div class="home-product-col">
                  <!-- Product Nested Row Starts -->
                  <div class="row">
                     <!-- Product Details Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <h5><a href="#">Strawberry Juice Refresher</a></h5>
                        <p>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.
                        </p>
                        <p class="price">
                           Price : <span class="price-new text-spl-color">$3.99</span>
                        </p>
                        <ul class="list-unstyled list-inline ratings">
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <div class="btn-group">
                           <button type="button" class="btn btn-fb animation"><i class="fa fa-thumbs-o-up"></i> Like</button>
                           <button type="button" class="btn btn-twitter animation"><i class="fa fa-twitter"></i> Tweet</button>
                           <button type="button" class="btn btn-secondary animation">More Info <i class="fa fa-arrow-circle-right"></i></button>
                        </div>
                     </div>
                     <!-- Product Details Ends -->
                     <!-- Product Image Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <img src="<%=Constants.CONTEXT%>/resources/images/home/image5.jpg" alt="Blog Image" class="img-responsive img-center-sm img-center-xs br-5">
                     </div>
                     <!-- Product Image Ends -->
                  </div>
                  <!-- Product Nested Row Ends -->
               </div>
            </div>
            <!-- Product #4 Ends -->
         </div>
         <!-- Nested Row Ends -->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Product Section Ends -->
   <!-- Our Menu Section Starts -->
   <section class="section section-inverse section-home-menu">
      <!-- Nested Container Starts -->
      <div class="container">
         <!-- Heading Starts -->
         <h1 class="text-center">Our Menu</h1>
         <!-- Heading Ends -->
         <!-- Spacer Starts -->
         <div class="spacer-tiny"></div>
         <!-- Spacer Ends -->
         <!-- Our Menu List Row Starts -->
         <div class="row">
            <!-- Left Col Starts -->
            <div class="col-sm-4 col-xs-12">
               <!-- Our Menu List #1 Starts -->
               <h3 class="main-heading-1 text-center text-uppercase text-bold">Hot Beverages</h3>
               <ul class="list-unstyled our-menu-list">
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Caramel Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 3.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Latte</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Roasted Hazelnut Latte</span>
                        <span class="text-normal pull-right text-right">$ 3.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Americano</span>
                        <span class="text-normal pull-right text-right">$ 4.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Expresso</span>
                        <span class="text-normal pull-right text-right">$ 6.20</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Caramel Macchiato</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Iresh Coffee</span>
                        <span class="text-normal pull-right text-right">$ 3.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Vanilla Coffee</span>
                        <span class="text-normal pull-right text-right">$ 2.00</span>
                     </h6>
                  </li>
               </ul>
               <!-- Our Menu List #1 Ends -->
               <!-- Spacer Starts -->
               <div class="spacer-small"></div>
               <!-- Spacer Ends -->
               <!-- Our Menu List #2 Starts -->
               <h3 class="main-heading-1 text-center text-uppercase text-bold">Cool Beverages</h3>
               <ul class="list-unstyled our-menu-list">
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Caramel Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 3.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Latte</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Roasted Hazelnut Latte</span>
                        <span class="text-normal pull-right text-right">$ 3.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Americano</span>
                        <span class="text-normal pull-right text-right">$ 4.50</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Expresso</span>
                        <span class="text-normal pull-right text-right">$ 6.20</span>
                     </h6>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Caramel Macchiato</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                  </li>
               </ul>
               <!-- Our Menu List #2 Ends -->
            </div>
            <!-- Left Col Ends -->
            <!-- Spacer For Small Screen Starts -->
            <div class="col-xs-12 hidden visible-xs">
               <div class="spacer-small"></div>
            </div>
            <!-- Spacer For Small Screen Ends -->
            <!-- Middle Col Starts -->
            <div class="col-sm-4 col-xs-12">
               <!-- Our Menu List #3 Starts -->
               <h3 class="main-heading-1 text-center text-uppercase text-bold">Classic Cool's</h3>
               <ul class="list-unstyled our-menu-list two">
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
               </ul>
               <!-- Our Menu List #3 Ends -->
            </div>
            <!-- Middle Col Ends -->
            <!-- Spacer For Small Screen Starts -->
            <div class="col-xs-12 hidden visible-xs">
               <div class="spacer-small"></div>
            </div>
            <!-- Spacer For Small Screen Ends -->
            <!-- Right Col Starts -->
            <div class="col-sm-4 col-xs-12">
               <!-- Our Menu List #4 Starts -->
               <h3 class="main-heading-1 text-center text-uppercase text-bold">Dessert's</h3>
               <ul class="list-unstyled our-menu-list two">
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
               </ul>
               <!-- Our Menu List #4 Ends -->
               <!-- Spacer Starts -->
               <div class="spacer-tiny"></div>
               <!-- Spacer Ends -->
               <!-- Our Menu List #5 Starts -->
               <h3 class="main-heading-1 text-center text-uppercase text-bold">Donut's</h3>
               <ul class="list-unstyled our-menu-list two">
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
                  <li>
                     <h6 class="our-menu-list-title clearfix">
                        <span class="text-light pull-left text-uppercase">Cappuccino</span>
                        <span class="text-normal pull-right text-right">$ 2.50</span>
                     </h6>
                     <p>Ieish Cream. Bols Creme De Menthe, chocolate drizzle, Skyy Vodka, Barcardi Superior Rum</p>
                  </li>
               </ul>
               <!-- Our Menu List #5 Ends -->
            </div>
            <!-- Right Col Ends -->
         </div>
         <!-- Our Menu List Row Ends	-->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Our Menu Section Ends -->
   <!-- Blog Section Starts -->
   <section class="section section-home-blog">
      <!-- Nested Container Starts -->
      <div class="container text-center">
         <!-- Heading Starts -->
         <h1 class="text-center">Blog &amp; Events</h1>
         <!-- Heading Ends -->
         <!-- Spacer Starts -->
         <div class="spacer-small"></div>
         <!-- Spacer Ends -->
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- Blog Post #1 Starts -->
            <div class="col-sm-4 col-xs-12">
               <article class="blog-post-teaser">
                  <!-- Blog Post Media Starts -->
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/image6.jpg" alt="Blog Image" class="img-responsive img-center br-5">
                  <!-- Blog Post Media Ends -->
                  <!-- Blog Post Heading Starts -->
                  <h5 class="blog-post-teaser-title"><a href="#">Strawberry Juice Refresher</a></h5>
                  <!-- Blog Post Heading Ends -->
                  <!-- Blog Post Meta Starts -->
                  <h6 class="blog-post-teaser-meta">30 Oct 2016</h6>
                  <hr class="hr-1 text-center">
                  <!-- Blog Post Meta Ends -->
                  <!--- Blog Content Starts -->
                  <div class="blog-post-teaser-content">
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Why Because you can’t spell deliciously, amazingly refreshing. It is a long established fact that a reader will be distracted by the readable content of a page when.
                     </p>
                     <p><a href="#" class="more-link">Read More</a></p>
                  </div>
                  <!--- Blog Content Ends -->
               </article>
            </div>
            <!-- Blog Post #1 Ends -->
            <!-- Blog Post #2 Starts -->
            <div class="col-sm-4 col-xs-12">
               <article class="blog-post-teaser inverse">
                  <!-- Blog Post Heading Starts -->
                  <h5 class="blog-post-teaser-title"><a href="#">Strawberry Juice Refresher</a></h5>
                  <!-- Blog Post Heading Ends -->
                  <!-- Blog Post Meta Starts -->
                  <h6 class="blog-post-teaser-meta">30 Sept 2016</h6>
                  <hr class="hr-1 text-center">
                  <!-- Blog Post Meta Ends -->
                  <!--- Blog Content Starts -->
                  <div class="blog-post-teaser-content inverse">
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Why Because you can’t spell deliciously, amazingly refreshing. It is a long established fact that a reader will be distracted by the readable content of a page when.
                     </p>
                     <p><a href="#" class="more-link">Read More</a></p>
                  </div>
                  <!--- Blog Content Ends -->
                  <!-- Blog Post Media Starts -->
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/image7.jpg" alt="Blog Image" class="img-responsive img-center br-5">
                  <!-- Blog Post Media Ends -->
               </article>
            </div>
            <!-- Blog Post #2 Ends -->
            <!-- Blog Post #3 Starts -->
            <div class="col-sm-4 col-xs-12">
               <article class="blog-post-teaser">
                  <!-- Blog Post Media Starts -->
                  <img src="<%=Constants.CONTEXT%>/resources/images/home/image8.jpg" alt="Blog Image" class="img-responsive img-center br-5">
                  <!-- Blog Post Media Ends -->
                  <!-- Blog Post Heading Starts -->
                  <h5 class="blog-post-teaser-title"><a href="#">Strawberry Juice Refresher</a></h5>
                  <!-- Blog Post Heading Ends -->
                  <!-- Blog Post Meta Starts -->
                  <h6 class="blog-post-teaser-meta">10 August 2016</h6>
                  <hr class="hr-1 text-center">
                  <!-- Blog Post Meta Ends -->
                  <!--- Blog Content Starts -->
                  <div class="blog-post-teaser-content">
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Why Because you can’t spell deliciously, amazingly refreshing. It is a long established fact that a reader will be distracted by the readable content of a page when.
                     </p>
                     <p><a href="#" class="more-link">Read More</a></p>
                  </div>
                  <!--- Blog Content Ends -->
               </article>
            </div>
            <!-- Blog Post #1 Ends -->
         </div>
         <!-- Nested Row Ends -->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Blog Section Ends -->
   <!-- Reservation Section Starts -->
   <section class="section section-grey section-home-reservation">
      <!-- Nested Container Starts -->
      <div class="container text-center-xs">
         <!-- Heading Starts -->
         <h1 class="text-center">Table / Event Reservation</h1>
         <!-- Heading Ends -->
         <!-- Spacer Starts -->
         <div class="spacer-small"></div>
         <!-- Spacer Ends -->
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- Reservation Form Starts -->
            <div class="col-sm-6 col-xs-12">
               <form class="reservation-form">
                  <!-- Form Nested Row Starts -->
                  <div class="row">
                     <!-- Select Date Field Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <div class="form-group">
                           <div id="reservation-date" class="input-group date">
                              <input type="text" class="form-control" placeholder="Select Date">
                              <span class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
                           </div>
                        </div>
                     </div>
                     <!-- Select Date Field Ends -->
                     <!-- Select Time Field Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <div class="form-group">
                           <div class="input-group date" id="reservation-time">
                              <input type="text" class="form-control" placeholder="Select Time">
                              <span class="input-group-addon">
											<span class="glyphicon glyphicon-time"></span>
										</span>
                           </div>
                        </div>
                     </div>
                     <!-- Select Time Field Ends -->
                     <!-- First Name Field Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <div class="form-group">
                           <label for="fname" class="sr-only">First Name: </label>
                           <input type="text" class="form-control" name="fname" id="fname" required="required" placeholder="First Name">
                        </div>
                     </div>
                     <!-- First Name Field Ends -->
                     <!-- Last Name Field Starts -->
                     <div class="col-sm-6 col-xs-12">
                        <div class="form-group">
                           <label for="lname" class="sr-only">Last Name: </label>
                           <input type="text" class="form-control" name="lname" id="lname" required="required" placeholder="Last Name">
                        </div>
                     </div>
                     <!-- Last Name Field Ends -->
                     <!-- Contact Field Starts -->
                     <div class="col-xs-12">
                        <div class="form-group">
                           <label for="contactno" class="sr-only">Contact No: </label>
                           <input type="text" class="form-control" name="contactno" id="contactno" placeholder="Contact No">
                        </div>
                     </div>
                     <!-- Contact Field Ends -->
                     <!-- Email Field Starts -->
                     <div class="col-xs-12">
                        <div class="form-group">
                           <label for="email" class="sr-only">Email: </label>
                           <input type="email" class="form-control" name="email" id="email" required="required" placeholder="Email ID">
                        </div>
                     </div>
                     <!-- Email Field Ends -->
                     <!-- Message Field Starts -->
                     <div class="col-xs-12">
                        <div class="form-group">
                           <label for="message" class="sr-only">Message: </label>
                           <textarea class="form-control" rows="3" name="message" id="message" required="required" placeholder="Message"></textarea>
                        </div>
                     </div>
                     <!-- Message Field Ends -->
                     <!-- Submit Button Starts -->
                     <div class="col-xs-12 text-right-lg text-right-md text-right-sm">
                        <input type="submit" class="btn btn-main animation" value="Book a Table / Event">
                     </div>
                     <!-- Submit Button Ends -->
                  </div>
                  <!-- Form Nested Row Ends -->
               </form>
            </div>
            <!-- Reservation Form Ends -->
            <!-- Spacer For Small Screens Starts -->
            <div class="col-xs-12 hidden visible-xs">
               <div class="spacer-small"></div>
            </div>
            <!-- Spacer For Small Screens Ends -->
            <!-- Image Starts -->
            <div class="col-sm-6 col-xs-12">
               <img src="<%=Constants.CONTEXT%>/resources/images/home/image9.jpg" alt="Reservation" class="img-responsive img-center br-5">
            </div>
            <!-- Image Ends -->
         </div>
         <!-- Nested Row Ends -->
      </div>
      <!-- Nested Container Ends -->
   </section>
   <!-- Reservation Section Ends -->
   <!-- Footer Starts -->
   <footer class="main-footer">
      <!-- Nested Container Starts -->
      <div class="container text-center-xs">
         <!-- Nested Row Starts -->
         <div class="row">
            <!-- About Col Starts -->
            <div class="col-md-3 col-sm-6 col-xs-12">
               <div class="footer-col">
                  <h4 class="text-uppercase">About Us</h4>
                  <p class="text-light">
                     Lorem ipsum dolor sit consectetur, amet adipiscing elit. Why Because you can’t spell deliciously.
                  </p>
                  <!-- Address Starts -->
                  <ul class="list-unstyled address-list text-light">
                     <li class="clearfix">
                        <i class="fa fa-map-marker"></i>
                        #3 Southern View, Shanti Ville, Hyd - 500012, Telangana
                     </li>
                     <li class="clearfix">
                        <i class="fa fa-phone"></i>
                        +1 234-567-898
                     </li>
                     <li class="clearfix">
                        <i class="fa fa-envelope"></i>
                        <a href="mailto:info@yourdomain.com">info@yourdomain.com</a>
                     </li>
                  </ul>
                  <!-- Address Ends -->
               </div>
            </div>
            <!-- About Col Starts -->
            <!-- Business Hours Starts -->
            <div class="col-md-3 col-sm-6 col-xs-12">
               <div class="footer-col">
                  <h4 class="text-uppercase">Business Hours</h4>
                  <!-- Business Hours Starts -->
                  <ul class="list-unstyled hours-list">
                     <li class="clearfix closed">
								<span class="pull-left-lg pull-left-md pull-left-sm">
									Monday
								</span>
                        <span class="pull-right-lg pull-right-md pull-right-sm text-right-lg text-right-md text-right-sm">
									Closed
								</span>
                     </li>
                     <li class="clearfix">
								<span class="pull-left-lg pull-left-md pull-left-sm">
									Tue - Fri
								</span>
                        <span class="pull-right-lg pull-right-md pull-right-sm text-right-lg text-right-md text-right-sm">
									9 am - 10 pm
								</span>
                     </li>
                     <li class="clearfix">
								<span class="pull-left-lg pull-left-md pull-left-sm">
									Sat - Sun
								</span>
                        <span class="pull-right-lg pull-right-md pull-right-sm text-right-lg text-right-md text-right-sm">
									7 am - 12 pm
								</span>
                     </li>
                     <li class="clearfix">
								<span class="pull-left-lg pull-left-md pull-left-sm">
									Holidays
								</span>
                        <span class="pull-right-lg pull-right-md pull-right-sm text-right-lg text-right-md text-right-sm">
									7 am - 11 pm
								</span>
                     </li>
                  </ul>
                  <!-- Business Hours Ends -->
                  <!-- Social Media Links Starts -->
                  <ul class="list-unstyled list-inline foot-sm-links">
                     <li><a href="#"><i class="fa fa-facebook animation"></i></a></li>
                     <li><a href="#"><i class="fa fa-twitter animation"></i></a></li>
                     <li><a href="#"><i class="fa fa-google-plus animation"></i></a></li>
                     <li><a href="#"><i class="fa fa-instagram animation"></i></a></li>
                     <li><a href="#"><i class="fa fa-pinterest-p animation"></i></a></li>
                  </ul>
                  <!-- Social Media Links Ends -->
               </div>
            </div>
            <!-- Business Hours Starts -->
            <!-- Clearfix For Small Devices Starts -->
            <div class="col-xs-12 hidden visible-sm"></div>
            <!-- Clearfix For Small Devices Ends -->
            <!-- Newsletter Starts -->
            <div class="col-md-3 col-sm-6 col-xs-12">
               <div class="footer-col">
                  <h4 class="text-uppercase">Newsletter</h4>
                  <p class="text-light">
                     If you world like sign-up to the origin newsletter, please enter your email address below
                  </p>
                  <!-- Subscribe Form Starts -->
                  <form class="subscribe-form">
                     <div class="form-group">
                        <label for="subscribe-name" class="sr-only">Name</label>
                        <input type="text" id="subscribe-name" class="form-control" placeholder="Name">
                     </div>
                     <div class="form-group">
                        <label for="subscribe-email" class="sr-only">Email</label>
                        <input type="email" id="subscribe-email" class="form-control" placeholder="Email">
                     </div>
                     <input type="submit" class="btn btn-secondary btn-block animation text-uppercase" value="Subscribe">
                  </form>
                  <!-- Subscribe Form Ends -->
               </div>
            </div>
            <!-- Newsletter Starts -->
            <!-- Latest Tweets Starts -->
            <div class="col-md-3 col-sm-6 col-xs-12">
               <div class="footer-col">
                  <h4 class="text-uppercase">Latest Tweets</h4>
                  <!-- Tweets Starts -->
                  <ul class="list-unstyled recent-tweets">
                     <li>
                        <p>Social Login for Bootstrap allow users to log into your store through their social profiles <a href="#">http://t.co/soMe</a></p>
                        <p class="tweet-timestamp"><i class="fa fa-twitter"></i> <a href="#">20 days ago</a></p>
                     </li>
                     <li>
                        <p>Social Login for Bootstrap allow users to log into your store through their social profiles <a href="#">http://t.co/soMe</a></p>
                        <p class="tweet-timestamp"><i class="fa fa-twitter"></i> <a href="#">25 days ago</a></p>
                     </li>
                  </ul>
                  <!-- Tweets Ends -->
               </div>
            </div>
            <!-- Latest Tweets Starts -->
         </div>
         <!-- Nested Row Ends -->
         <!-- Copyright Starts -->
         <div class="copyright text-center">
            &copy; 2016 <strong>Coffee Bingo</strong> All Rights Reserved. Template By <a href="http://sainathchillapuram.com" class="text-bold">Sainath Chillapuram</a>
         </div>
         <!-- Copyright Ends -->
      </div>
      <!-- Nested Container Ends -->
   </footer>
   <!-- Footer Ends -->
   <!-- Template JS Files -->
   <script src="<%=Constants.CONTEXT%>/resources/js/jquery-1.12.4.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/jquery-migrate-1.4.1.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/bootstrap.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/plugins/datetimepicker/js/moment-with-locales.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/plugins/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/plugins/shuffle/jquery.shuffle.modernizr.min.js"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script>
   <script src="<%=Constants.CONTEXT%>/resources/js/custom.js"></script>
   <%--</body>--%>
</div>


