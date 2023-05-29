<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <title>
      Welcome to FlatShop
    </title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <link href="css/style.css" rel="stylesheet" type="text/css">
   
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
</script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js">
</script>
<![endif]-->
  </head>
  <body>
    <div class="wrapper">
      <div class="header">
        <div class="container">
          <div class="row">
            <div class="col-md-2 col-sm-2">
              <div class="logo">
                <a href="index.html">
                  <img src="images/logo.png" alt="FlatShop">
                </a>
              </div>
            </div>
            <div class="col-md-10 col-sm-10">
              <div class="header_top">
                <div class="row">
                  <div class="col-md-3">
                    <ul class="option_nav">
                      <li class="dorpdown">
                        <a href="#">
                          Eng
                        </a>
                        <ul class="subnav">
                          <li>
                            <a href="#">
                              Eng
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              Vns
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              Fer
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              Gem
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="dorpdown">
                        <a href="#">
                          USD
                        </a>
                        <ul class="subnav">
                          <li>
                            <a href="#">
                              USD
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              UKD
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              FER
                            </a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-6">
                    <ul class="topmenu">
                      <li>
                        <a href="#">
                          About Us
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          News
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          Service
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          Recruiment
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          Media
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          Support
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-3">
                    <ul class="usermenu">
                      <li>
                        <a href="checkout.html" class="log">
                          Login
                        </a>
                      </li>
                      <li>
                        <a href="checkout2.html" class="reg">
                          Register
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="header_bottom">
                <ul class="option">
                  <li id="search" class="search">
                    <form>
                      <input class="search-submit" type="submit" value="">
                      <input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search">
                    </form>
                  </li>
                  <li class="option-cart">
                    <a href="#" class="cart-icon">
                      cart 
                      <span class="cart_no">
                        02
                      </span>
                    </a>
                    <ul class="option-cart-item">
                      <li>
                        <div class="cart-item">
                          <div class="image">
                            <img src="images/products/thum/products-01.png" alt="">
                          </div>
                          <div class="item-description">
                            <p class="name">
                              Lincoln chair
                            </p>
                            <p>
                              Size: 
                              <span class="light-red">
                                One size
                              </span>
                              <br>
                              Quantity: 
                              <span class="light-red">
                                01
                              </span>
                            </p>
                          </div>
                          <div class="right">
                            <p class="price">
                              VNĐ30.00
                            </p>
                            <a href="#" class="remove">
                              <img src="images/remove.png" alt="remove">
                            </a>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="cart-item">
                          <div class="image">
                            <img src="images/products/thum/products-02.png" alt="">
                          </div>
                          <div class="item-description">
                            <p class="name">
                              Lincoln chair
                            </p>
                            <p>
                              Size: 
                              <span class="light-red">
                                One size
                              </span>
                              <br>
                              Quantity: 
                              <span class="light-red">
                                01
                              </span>
                            </p>
                          </div>
                          <div class="right">
                            <p class="price">
                              VNĐ30.00
                            </p>
                            <a href="#" class="remove">
                              <img src="images/remove.png" alt="remove">
                            </a>
                          </div>
                        </div>
                      </li>
                      <li>
                        <span class="total">
                          Total 
                          <strong>
                            VNĐ60.00
                          </strong>
                        </span>
                        <button class="checkout" onClick="location.href='checkout.html'">
                          CheckOut
                        </button>
                      </li>
                    </ul>
                  </li>
                </ul>
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">
                      Toggle navigation
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                  </button>
                </div>
                <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                    <li class="active dropdown">
                      <a href="index.jsp" class="dropdown-toggle" data-toggle="dropdown">
                        Home
                      </a>
                      <div class="dropdown-menu">
                        <ul class="mega-menu-links">
                          <li>
                            <a href="index.jsp">
                              home
                            </a>
                          </li>
                          <li>
                            <a href="">
                              home2
                            </a>
                          </li>
                          <li>
                            <a href="">
                              home3
                            </a>
                          </li>
                          <li>
                            <a href="productlitst.html">
                              Productlitst
                            </a>
                          </li>
                          <li>
                            <a href="productgird.html">
                              Productgird
                            </a>
                          </li>
                          <li>
                            <a href="details.html">
                              Details
                            </a>
                          </li>
                          <li>
                            <a href="cart.html">
                              Cart
                            </a>
                          </li>
                          <li>
                            <a href="checkout.html">
                              CheckOut
                            </a>
                          </li>
                          <li>
                            <a href="checkout2.html">
                              CheckOut2
                            </a>
                          </li>
                          <li>
                            <a href="contact.html">
                              contact
                            </a>
                          </li>
                        </ul>
                      </div>
                    </li>
                    <li>
                      <a href="productgird.html">
                        men
                      </a>
                    </li>
                    <li>
                      <a href="productlitst.html">
                        women
                      </a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Fashion
                      </a>
                      <div class="dropdown-menu mega-menu">
                        <div class="row">
                          <div class="col-md-6 col-sm-6">
                            <ul class="mega-menu-links">
                              <li>
                                <a href="productgird.html">
                                  New Collection
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Shirts & tops
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Laptop & Brie
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Dresses
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Blazers & Jackets
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Shoulder Bags
                                </a>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-sm-6">
                            <ul class="mega-menu-links">
                              <li>
                                <a href="productgird.html">
                                  New Collection
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Shirts & tops
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Laptop & Brie
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Dresses
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Blazers & Jackets
                                </a>
                              </li>
                              <li>
                                <a href="productgird.html">
                                  Shoulder Bags
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <a href="productgird.html">
                        gift
                      </a>
                    </li>
                    <li>
                      <a href="productgird.html">
                        kids
                      </a>
                    </li>
                    <li>
                      <a href="productgird.html">
                        blog
                      </a>
                    </li>
                    <li>
                      <a href="productgird.html">
                        jewelry
                      </a>
                    </li>
                    <li>
                      <a href="contact.html">
                        contact us
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="page-index">
          <div class="container">
            <p>
              Home - Products Details
            </p>
          </div>
        </div>
      </div>
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="products-details">
                <div class="preview_image">
                  <div class="preview-small">
                    <img id="zoom_03" src="images/products/medium/products-01.jpg" data-zoom-image="images/products/Large/products-01.jpg" alt="">
                  </div>
                  <div class="thum-image">
                    <ul id="gallery_01" class="prev-thum">
                      <li>
                        <a href="#" data-image="images/products/medium/products-01.jpg" data-zoom-image="images/products/Large/products-01.jpg">
                          <img src="images/products/thum/products-01.png" alt="">
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-02.jpg" data-zoom-image="images/products/Large/products-02.jpg">
                          <img src="images/products/thum/products-02.png" alt="">
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-03.jpg" data-zoom-image="images/products/Large/products-03.jpg">
                          <img src="images/products/thum/products-03.png" alt="">
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-04.jpg" data-zoom-image="images/products/Large/products-04.jpg">
                          <img src="images/products/thum/products-04.png" alt="">
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-05.jpg" data-zoom-image="images/products/Large/products-05.jpg">
                          <img src="images/products/thum/products-05.png" alt="">
                        </a>
                      </li>
                    </ul>
                    <a class="control-left" id="thum-prev" href="javascript:void(0);">
                      <i class="fa fa-chevron-left">
                      </i>
                    </a>
                    <a class="control-right" id="thum-next" href="javascript:void(0);">
                      <i class="fa fa-chevron-right">
                      </i>
                    </a>
                  </div>
                </div>
                <div class="products-description">
                  <h5 class="name">
                    Lincoln Corner Unit Products
                  </h5>
                  <p>
                    <img alt="" src="images/star.png">
                    <a class="review_num" href="#">
                      02 Đánh giá
                    </a>
                  </p>
                  <p>
                   Sẵn có:
                    <span class=" light-red">
                      Còn hàng
                    </span>
                  </p>
                  <p>
                    Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrie ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulps utate, tristique ut lectus. Sed et lorem nunc...
                  </p>
                  <hr class="border">
                  <div class="price">
                    Giá : 
                    <span class="new_price">
                      400.000 
                      <sup>
                       VNĐ
                      </sup>
                    </span>
                    <span class="old_price">
                      450.00
                      <sup>
                        VNĐ
                      </sup>
                    </span>
                  </div>
                  <hr class="border">
                  <div class="wided">
                  <div class="col-md-4">
                    <div class="size">
                      Kích cỡ: &nbsp;&nbsp;: 
                      <select>
                        <option>
                          S
                        </option>
                         <option>
                          M
                        </option>
                         <option>
                          L
                        </option>
                         <option>
                          XL
                        </option>
                        <option>
                          XXL
                        </option>
                      </select>
                    </div>
                    </div>
                    <div class="col-md-6">
          <div class="quantity-container">
       Số lượng &nbsp;&nbsp;: &nbsp;&nbsp; <button class="quantity-button" onclick="decreaseQuantity()">-</button>
        <input class="quantity-input" type="text" value="0" id="quantityInput">
        <button class="quantity-button" onclick="increaseQuantity()">+</button>
    </div>
    </div>
                    <div class="button_group">
                      <button class="button" >
                        Thêm giỏ hàng
                      </button>
                      
                    </div>
                  </div>
                  <div class="clearfix">
                  </div>
                  <hr class="border">
                  <img src="images/share.png" alt="" class="pull-right">
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="tab-box">
                <div id="tabnav">
                  <ul>
                    <li>
                      <a href="#Descraption">
                        Mô tả
                      </a>
                    </li>
                             
                  </ul>
                </div>
                <div class="tab-content-wrap">
                  <div class="tab-content" id="Descraption">
                   
                    <p>
                     Đồ mặc rất thoải mái
                    </p>
                  </div>
                  
                  <div class="tab-content" id="tags">
                    <div class="tag">
                      Add Tags : 
                      <input type="text" name="">
                      <input type="submit" value="Tag">
                    </div>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div id="productsDetails" class="hot-products">
                <h3 class="title">
                  <strong>
                    Hot
                  </strong>
                  Sản phẩm
                </h3>
                <div class="control">
                  <a id="prev_hot" class="prev" href="#">
                    &lt;
                  </a>
                  <a id="next_hot" class="next" href="#">
                    &gt;
                  </a>
                </div>
                <ul id="hot">
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Thêm giỏ hàng
                            </button>
                          
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                             Thêm giỏ hàng
                            </button>
                            
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            Mới
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                             Thêm giỏ hàng
                            </button>
                           
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Thêm giỏ hàng
                            </button>
                            
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Thêm giỏ hàng
                            </button>
                            
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            Mới
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ 451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Thêm giỏ hàng
                            </button>
                           
                           
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                             Thêm giỏ hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Thêm giỏ hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            New
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name">
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            VNĐ451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                          Thêm giỏ hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="clearfix">
              </div>
            </div>
            
          </div>
          <div class="clearfix">
          </div>
          <div class="our-brand">
            <h3 class="title">
              <strong>
                Thương hiệu 
              </strong>
              của chúng tôi
            </h3>
            <div class="control">
              <a id="prev_brand" class="prev" href="#">
                &lt;
              </a>
              <a id="next_brand" class="next" href="#">
                &gt;
              </a>
            </div>
            <ul id="braldLogo">
              <li>
                <ul class="brand_item">
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/envato.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/themeforest.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/photodune.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/activeden.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/envato.png" alt="">
                      </div>
                    </a>
                  </li>
                </ul>
              </li>
              <li>
                <ul class="brand_item">
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/envato.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/themeforest.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/photodune.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/activeden.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/envato.png" alt="">
                      </div>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="clearfix">
      </div>
      <div class="footer">
        <div class="footer-info">
          <div class="container">
            <div class="row">
              <div class="col-md-3">
                <div class="footer-logo">
                  <a href="#">
                    <img src="images/logo.png" alt="">
                  </a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <h4 class="title">
                  Thông tin 
                  <strong>
                    liên hệ 
                  </strong>
                </h4>
                <p>
                  No. 08, Nguyen Trai, Hanoi , Vietnam
                </p>
                <p>
                  Call Us : (084) 1900 1008
                </p>
                <p>
                  Email : michael@leebros.us
                </p>
              </div>
              <div class="col-md-3 col-sm-6">
                <h4 class="title">
                  Hỗ trợ 
                  <strong>
                   khách hàng

                  </strong>
                </h4>
                <ul class="support">
                  <li>
                    <a href="#">
                      FAQ
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Payment Option
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Booking Tips
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Infomation
                    </a>
                  </li>
                </ul>
              </div>
              <div class="col-md-3">
                <h4 class="title">
                 Nhận bản tin 
                  <strong>
                   của chúng tôi
                  </strong>
                </h4>
                <p>
                  Lorem ipsum dolor ipsum dolor.
                </p>
                <form class="newsletter">
                  <input type="text" name="" placeholder="Type your email....">
                  <input type="submit" value="SignUp" class="button">
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="copyright-info">
          <div class="container">
            <div class="row">
              <div class="col-md-6">
                <p>
                  Copyright Â© 2012. Designed by 
                  <a href="#">
                    Michael Lee
                  </a>
                  . All rights reseved
                </p>
              </div>
              <div class="col-md-6">
                <ul class="social-icon">
                  <li>
                    <a href="#" class="linkedin">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="google-plus">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="twitter">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="facebook">
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script defer src="js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src='js/jquery.elevatezoom.js'>
    </script>
    <script type="text/javascript" src="js/script.min.js" >
   
    </script>
     <script type="text/javascript"  src="js/tangSoLuong.js" ></script>
  </body>
</html>