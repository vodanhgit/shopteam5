<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>Welcome to ShopTeam5</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
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
							<a href="/index"> <img src="images/shopteam5_logo.png"
								alt="shopteam5" width="100px"></a>
						</div>
					</div>
					<div class="col-md-10 col-sm-10">
						<div class="header_top">
							<div class="row">
								<!-- dangnhap -->
								<div class="col-sm-12">
									<ul class="usermenu">
										<li><a href="checkout.html" class="log">Đăng nhập</a></li>
										<li><a href="checkout2.html" class="reg">Đăng kí</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="header_bottom">
							<ul class="option">
								<li id="search" class="search">
									<form><input type="text" class="form-control" placeholder="Search"></form>
								</li>
								<li class="option-cart"><a href="#" class="cart-icon">cart

								</a></li>

							</ul>
							<div class="navbar-collapse collapse">

								<ul class="nav navbar-nav">
									<li class="active dropdown"><a href="/index"
										class="dropdown-toggle" data-toggle="dropdown">Trang Chủ</a></li>
									<!-- <li><a href="productgird.html">Nam</a></li> -->
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Nam</a>
										<div class="dropdown-menu mega-menu">
											<div class="row">
												<div class="col-md-6 col-sm-6">
													<ul class="mega-menu-links">
														<li><a href="/formaonam">Tất cả áo</a></li>
														<li><a href="/aothunnam">Áo thun nam</a></li>
														<li><a href="/aopolonam">Áo Polo</a></li>
														<li><a href="/aosominam">Áo sơ mi</a></li>
														<li><a href="/aolennam">Áo len</a></li>
														<li><a href="/aohoodienam">Áo Hoodie</a></li>
													</ul>
												</div>
											</div>
										</div></li>
									<li class="dropdown"><a href="" class="dropdown-toggle"
										data-toggle="dropdown">Nữ</a>
										<div class="dropdown-menu mega-menu">
											<div class="row">
												<div class="col-md-6 col-sm-6">
													<ul class="mega-menu-links">
														<li><a href="/formaonu">Tất cả áo</a></li>
														<li><a href="/aothunu">Áo thun nữ</a></li>
														<li><a href="/aosominu">Áo sơ mi</a></li>
														<li><a href="/aobra">Áo Bra</a></li>
														<li><a href="/aolennu">Áo len</a></li>
														<li><a href="/aohoodienu">Áo Hoodie</a></li>

													</ul>
												</div>
											</div>
										</div></li>
									<li><a href="productgird.html">Bộ sưu tập</a></li>


									<li><a href="productgird.html">Tin Tức</a></li>
									<li><a href="contact.html">Liên Hệ</a></li>

								</ul>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="products-details">
							<div class="preview_image">
								<div class="preview-small">
									<img id="zoom_03" src="images/products/male/1.png"
										data-zoom-image="images/products/male/1.png" alt="">
								</div>
								<!-- <div class="thum-image">
                  <ul id="gallery_01" class="prev-thum">
                    <li>
                      <a href="#" data-image="images/products/medium/products-01.jpg"
                        data-zoom-image="images/products/Large/products-01.jpg">
                        <img src="images/products/thum/products-01.png" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#" data-image="images/products/medium/products-02.jpg"
                        data-zoom-image="images/products/Large/products-02.jpg">
                        <img src="images/products/thum/products-02.png" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#" data-image="images/products/medium/products-03.jpg"
                        data-zoom-image="images/products/Large/products-03.jpg">
                        <img src="images/products/thum/products-03.png" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#" data-image="images/products/medium/products-04.jpg"
                        data-zoom-image="images/products/Large/products-04.jpg">
                        <img src="images/products/thum/products-04.png" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#" data-image="images/products/medium/products-05.jpg"
                        data-zoom-image="images/products/Large/products-05.jpg">
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
                </div> -->
							</div>
							<div class="products-description">
								<h5 class="name">Áo thun</h5>

								<p>
									Trạng thái: <span class=" light-red"> còn hàng </span>
								</p>
								<p>Chiếc áo được làm bằng vải coton. Cổ áo co giãn tiện lợi.
								</p>
								<hr class="border">
								<div class="price">
									Giá : <span class="new_price"> 450.000 <sup> VND </sup>
									</span> <span class="old_price"> 500.000 <sup> VND </sup>
									</span>
								</div>
								<hr class="border">
								<div class="wided">
									<div class="qty">
										Số lượng &ensp;&ensp;: <input type="number" size="4"
											title="Qty" value="1" name="quantity" min="1" max="10"
											step="1">


									</div>
									<div class="qty">
										&ensp;&ensp;Size: <select>
											<option>S</option>
											<option>M</option>
											<option>L</option>
											<option>XL</option>
											<option>XXL</option>
										</select>
									</div>
									<div class="qty">
										&ensp;&ensp;Màu: <select>
											<option>Đen</option>
											<option>Đỏ</option>
											<option>Trắng</option>
										</select>
									</div>

								</div>
								<div class="button_group" style="margin-top: 10px">
									<button class="button">Thêm vào giỏ</button>

								</div>
								<div class="clearfix"></div>


							</div>
							<div class="tab-box">
								<div id="tabnav">
									<ul>
										<li><a href=""> Mô Tả </a></li>

									</ul>
								</div>
								<div class="tab-content-wrap">
									<div class="tab-content" id="Descraption">
										<p>
										<div style="font-size: 14px;">
											<div>
												<strong>Chất liệu:&nbsp;</strong>vải tổng hợp&nbsp;cao cấp
											</div>
											<div>
												<strong>Kiểu dáng:&nbsp;</strong>áo vest thiết kế chiết eo,
												cài khuy bọc phía trước, tone màu hồng trơn<br>
												<strong>Sản phẩm thuộc dòng sản phẩm :&nbsp;</strong>NEM NEW
											</div>
											<div>
												<strong>Thông tin người mẫu:&nbsp;</strong>mặc sản phẩm size
												2
											</div>
											<div>
												<strong>Sản phẩm kết hợp:</strong>chân váy Z16862
											</div>
										</div>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>

						<div class="clearfix"></div>
					</div>
					<div class="col-md-3">
						<div class="clearfix"></div>

						<div class="clearfix"></div>
						<div class="get-newsletter leftbar">
							<h3 class="title">
								Liên hệ <strong> chúng tôi </strong>
							</h3>

							<form>
								<input class="email" type="text" name=""
									placeholder="Your Email..."> <input class="submit"
									type="submit" value="Submit">
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="fbl-box leftbar">
							<h3 class="title">Facebook</h3>
							<span class="likebutton"> <a href="#"> <img
									src="images/fblike.png" alt="">
							</a>
							</span>
							<p>12k like shopteam5.</p>


						</div>
						<div class="clearfix"></div>

					</div>

					<div id="productsDetails" class="hot-products">
						<h3 class="title">
							<strong> Sản phẩm </strong> Liên quan
						</h3>
						<div class="control">
							<a id="prev_hot" class="prev" href="#"> &lt; </a> <a
								id="next_hot" class="next" href="#"> &gt; </a>
						</div>
						<ul id="hot">
							<li>
								<div class="row">
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="/mota"><img
													src="images/products/large/938-9385688_o-s-mi-nam-mu-trng.png"
													alt="Product Name" style="height: 98%"></a>
											</div>
											<div class="productname">Áo sơ mi nam mới</div>
											<h4 class="price">999.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-02.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Mercerized Cotton Dáng Chữ
												A</div>
											<h4 class="price">550.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<!-- <div class="offer">New</div> -->
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-03.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Cotton Mini Xếp Tầng Ngắn
												Tay</div>
											<h4 class="price">699.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
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
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-01.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm không tay vải Cotton</div>
											<h4 class="price">999.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-02.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Mercerized Cotton Dáng Chữ
												A</div>
											<h4 class="price">550.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<!-- <div class="offer">New</div> -->
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-03.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Cotton Mini Xếp Tầng Ngắn
												Tay</div>
											<h4 class="price">699.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
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
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-01.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm không tay vải Cotton</div>
											<h4 class="price">999.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-02.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Mercerized Cotton Dáng Chữ
												A</div>
											<h4 class="price">550.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="products">
											<div class="offer">- %20</div>
											<!-- <div class="offer">New</div> -->
											<div class="thumbnail">
												<a href="details.html"><img
													src="images/products/small/products-03.png"
													alt="Product Name"></a>
											</div>
											<div class="productname">Đầm Cotton Mini Xếp Tầng Ngắn
												Tay</div>
											<h4 class="price">699.000 VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												<button class="button compare" type="button">
													<i class="fa fa-exchange"></i>
												</button>
												<button class="button wishlist" type="button">
													<i class="fa fa-heart-o"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="clearfix"></div>
				<div class="our-brand">
					<h3 class="title">
						<strong> Our </strong> Brands
					</h3>
					<div class="control">
						<a id="prev_brand" class="prev" href="#"> &lt; </a> <a
							id="next_brand" class="next" href="#"> &gt; </a>
					</div>
					<ul id="braldLogo">
						<li>
							<ul class="brand_item">
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/themeforest.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/photodune.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/activeden.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
							</ul>
						</li>
						<li>
							<ul class="brand_item">
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/themeforest.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/photodune.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/activeden.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="footer">
			<div class="footer-info">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="footer-logo">
								<img src="images/shopteam5_logo.png" alt="shopteam5"
									width="100px">
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<h4 class="title">
								Thông tin <strong>liên lạc</strong>
							</h4>
							<p>Toà nhà FPT Polytechnic, đường số 22, phường Thường Thạnh,
								quận Cái Răng, TP Cần Thơ.</p>
							<p>Gọi: 098 388 1100</p>
							<p>Email : caodang@fpt.edu.vn</p>
						</div>
						<div class="col-md-3 col-sm-6">
							<h4 class="title">
								Hỗ trợ <strong> Khách hàng</strong>
							</h4>
							<ul class="support">
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Payment Option</a></li>
								<li><a href="#">Booking Tips</a></li>
								<li><a href="#">Infomation</a></li>
							</ul>
						</div>
						<div class="col-md-3">
							<h4 class="title">
								Liên hệ <strong>Chúng tôi </strong>
							</h4>

							<form class="newsletter">
								<input type="text" name="" placeholder="Nhập email của bạn....">
								<input type="submit" value="Gửi" class="button">
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
								Copyright © 2023. Designed by <a href="#">ShopTeam5</a>. All
								rights reseved
							</p>
						</div>
						<div class="col-md-6">
							<ul class="social-icon">
								<li><a href="#" class="linkedin"></a></li>
								<li><a href="#" class="google-plus"></a></li>
								<li><a href="#" class="twitter"></a></li>
								<li><a href="#" class="facebook"></a></li>
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
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js">
		
	</script>
	<script type="text/javascript" src='js/jquery.elevatezoom.js'>
		
	</script>
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>

</html>