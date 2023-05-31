<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Shopteam5 - Giỏ hàng</title>
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
<!-- 										<li><a href="checkout.html" class="log">Đăng nhập</a></li> -->
<!-- 										<li><a href="checkout2.html" class="reg">Đăng kí</a></li> -->
																				<li><a href="/admin/index" class="log">Tài khoản của tôi</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="header_bottom">
							<ul class="option">
								<li id="search" class="search">
<!-- 									<form><input type="text" class="form-control" placeholder="Search"></form> -->
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
									<li><a href="">tài khoản của tôi</a></li>
								</ul>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container shopping-cart">
				<div class="row">
					<div class="col-md-12">
						<h3 class="title">Giỏ hàng</h3>
						<div class="clearfix"></div>
						<table class="shop-table">
							<thead>
								<tr>
									<th>Hình ảnh</th>
									<th>Thông tin sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th>Xóa</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img src="images/products/small/products-06.png"
										alt=""></td>
									<td>
										<div class="shop-details">
											<div class="productname">Lincoln Corner Unit Products</div>
											<!--                         <p> -->
											<!--                           <img alt="" src="images/star.png"> -->
											<!--                           <a class="review_num" href="#"> -->
											<!--                             02 Review(s) -->
											<!--                           </a> -->
											<!--                         </p> -->
											<div class="color-choser">
												<span class="text"> Màu sắc : </span>
												<ul>
													<li><a class="black-bg " href="#"> Đen </a></li>
													<li><a class="red-bg" href="#"> Đỏ </a></li>
												</ul>
											</div>
											<p>
												Mã sản phẩm : <strong class="pcode"> SP01 </strong>
											</p>
										</div>
									</td>
									<td>
										<h5>200.000VNĐ</h5>
									</td>
									<td><input type="number" style="width: 100%"> <!--                       <select name=""> -->
										<!--                         <option selected value="1"> --> <!--                           1 -->
										<!--                         </option> --> <!--                         <option value="1"> -->
										<!--                           2 --> <!--                         </option> -->
										<!--                         <option value="1"> --> <!--                           3 -->
										<!--                         </option> --> <!--                       </select> -->
									</td>
									<td>
										<h5>
											<strong class="red"> 200.000VNĐ </strong>
										</h5>
									</td>
									<td><a href="#"> <img src="images/remove.png" alt="">
									</a></td>
								</tr>


								<tr>
									<td><img src="images/products/small/products-02.png"
										alt=""></td>
									<td>
										<div class="shop-details">
											<div class="productname">Lincoln Corner Unit Products</div>
											<!--                         <p> -->
											<!--                           <img alt="" src="images/star.png"> -->
											<!--                           <a class="review_num" href="#"> -->
											<!--                             02 Review(s) -->
											<!--                           </a> -->
											<!--                         </p> -->
											<div class="color-choser">
												<span class="text"> Màu sắc : </span>
												<ul>
													<li><a class="black-bg " href="#"> Đen </a></li>
													<li><a class="red-bg" href="#"> Đỏ </a></li>
												</ul>
											</div>
											<p>
												Mã sản phẩm : <strong class="pcode"> SP01 </strong>
											</p>
										</div>
									</td>
									<td>
										<h5>200.000VNĐ</h5>
									</td>
									<td><input type="number" style="width: 100%"> <!--                       <select name=""> -->
										<!--                         <option selected value="1"> --> <!--                           1 -->
										<!--                         </option> --> <!--                         <option value="1"> -->
										<!--                           2 --> <!--                         </option> -->
										<!--                         <option value="1"> --> <!--                           3 -->
										<!--                         </option> --> <!--                       </select> -->
									</td>
									<td>
										<h5>
											<strong class="red"> 200.000VNĐ </strong>
										</h5>
									</td>
									<td><a href="#"> <img src="images/remove.png" alt="">
									</a></td>
								</tr>

								<tr>
									<td><img src="images/products/small/products-05.png"
										alt=""></td>
									<td>
										<div class="shop-details">
											<div class="productname">Lincoln Corner Unit Products</div>
											<!--                         <p> -->
											<!--                           <img alt="" src="images/star.png"> -->
											<!--                           <a class="review_num" href="#"> -->
											<!--                             02 Review(s) -->
											<!--                           </a> -->
											<!--                         </p> -->
											<div class="color-choser">
												<span class="text"> Màu sắc : </span>
												<ul>
													<li><a class="black-bg " href="#"> Đen </a></li>
													<li><a class="red-bg" href="#"> Đỏ </a></li>
												</ul>
											</div>
											<p>
												Mã sản phẩm : <strong class="pcode"> SP01 </strong>
											</p>
										</div>
									</td>
									<td>
										<h5>200.000VNĐ</h5>
									</td>
									<td><input type="number" style="width: 100%"> <!--                       <select name=""> -->
										<!--                         <option selected value="1"> --> <!--                           1 -->
										<!--                         </option> --> <!--                         <option value="1"> -->
										<!--                           2 --> <!--                         </option> -->
										<!--                         <option value="1"> --> <!--                           3 -->
										<!--                         </option> --> <!--                       </select> -->
									</td>
									<td>
										<h5>
											<strong class="red"> 200.000VNĐ </strong>
										</h5>
									</td>
									<td><a href="#"> <img src="images/remove.png" alt="">
									</a></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="6">
										<button class="pull-left">Tiếp tục mua sắm</button>
										<button class=" pull-right">Cập nhật giỏ hàng</button>
									</td>
								</tr>
							</tfoot>
						</table>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="shippingbox">
									<h5>Địa chỉ vận chuyển</h5>
									<form>
										<label> Tỉnh/ Thành phố * </label> <select class="">

											<option value="hsoctrang">Sóc Trăng</option>
										</select> <label> Quận / Huyện * </label> <select class="">

											<option value="hlongphu">Long Phú</option>
										</select> <label> Xã / Thị trấn * </label> <select class="">

											<option value="xhauthanh">Hậu Thạnh</option>
										</select>
										<div class="clearfix"></div>
										<!--                       <button> -->
										<!--                         Xác nhận địa chỉ -->
										<!--                       </button> -->
									</form>
								</div>
							</div>
							<!--                 <div class="col-md-4 col-sm-6"> -->
							<!--                   <div class="shippingbox"> -->
							<!--                     <h5> -->
							<!--                       Discount Codes -->
							<!--                     </h5> -->
							<!--                     <form> -->
							<!--                       <label> -->
							<!--                         Enter your coupon code if you have one -->
							<!--                       </label> -->
							<!--                       <input type="text" name=""> -->
							<!--                       <div class="clearfix"> -->
							<!--                       </div> -->
							<!--                       <button> -->
							<!--                         Get A Qoute -->
							<!--                       </button> -->
							<!--                     </form> -->
							<!--                   </div> -->
							<!--                 </div> -->
							<div class="col-md-4 col-sm-6">
								<div class="shippingbox">
									<!--                     <div class="subtotal"> -->
									<!--                       <h5> -->
									<!--                         Sub Total -->
									<!--                       </h5> -->
									<!--                       <span> -->
									<!--                         $1.000.00 -->
									<!--                       </span> -->
									<!--                     </div> -->
									<div class="grandtotal">
										<h5>Tổng tiền:</h5>
										<span> 1.000.000 VNĐ </span>
									</div>
									<button>Mua hàng</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="our-brand">
					<h3 class="title">
						<strong>Nhãn </strong> Hàng
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
								<a href="#"> <img src="images/shopteam5_logo.png"
									alt="shopteam5" width="100px">
								</a>
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
								<li><a href="#"> FAQ </a></li>
								<li><a href="#"> Payment Option </a></li>
								<li><a href="#"> Booking Tips </a></li>
								<li><a href="#"> Infomation </a></li>
							</ul>
						</div>
						<div class="col-md-3">
							<h4 class="title">
								Liên hệ <strong>Chúng tôi </strong>
							</h4>
							<p>Lorem ipsum dolor ipsum dolor.</p>
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
								<li><a href="#" class="linkedin"> </a></li>
								<li><a href="#" class="google-plus"> </a></li>
								<li><a href="#" class="twitter"> </a></li>
								<li><a href="#" class="facebook"> </a></li>
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
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>
</html>