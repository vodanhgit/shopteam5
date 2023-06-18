<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>ShopTeam 5</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/sequence-looptheme.css" rel="stylesheet" media="all" />
<link href="css/style.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>

<body id="home">
	<div class="wrapper">
		<div class="header">
			<%@include file="/WEB-INF/accers/menu.jsp"%>

		</div>
		<div class="clearfix"></div>
		<div class="hom-slider">
			<div class="container">
				<div id="sequence">
					<div class="sequence-prev">
						<i class="fa fa-angle-left"></i>
					</div>
					<div class="sequence-next">
						<i class="fa fa-angle-right"></i>
					</div>
					<ul class="sequence-canvas">
						<li class="animate-in">
							<div class="flat-caption caption1 formLeft delay300 text-center">
								<span class="suphead">ShopTeam5 Since 2023</span>
							</div>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>Bộ sưu tập cho mùa Hè</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Thế giới thời trang.<br>Nơi bắt nguồn của những cảm hứng
									thời trang
								</p>
							</div> <!-- <div class="flat-button caption4 formLeft delay600 text-center"><a class="more" href="#">More
                           Details</a></div> -->
							<div class="flat-image formBottom delay200" data-duration="5"
								data-bottom="true">
								<img src="images/Layer 1_ct.png" alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400">
								<h1>Bộ sưu tập cho mùa Hè</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500">
								<h2>Chỉ có hàng mới, không có giá mới.</h2>
							</div> <!-- <div class="flat-button caption5 formLeft delay600"><a class="more" href="#">More Details</a></div> -->
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img src="images/Layer 2_ct.png" alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>Thời Trang Mới 2023</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>Tận hưởng việc diện đồ là nghệ thuật đích thực.</p>
							</div>
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img src="images/Layer 3_ct.png" alt="">
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="promotion-banner">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="images/promotion-01_ct.png" alt="">
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="images/promotion-02_ct.png" alt="">
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="images/promotion-03_ct.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="hot-products">

					<h3 class="title">
						Sản Phẩm <strong>Giảm Giá</strong>
					</h3>
					<div class="control">
						<a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot"
							class="next" href="#">&gt;</a>
					</div>
					<ul id="hot">
						<li>
							<div class="row">

								<div class="col-md-3 col-sm-6">
									
										<div class="products">
											<div class="offer">- %20</div>
											<div class="thumbnail">
												<a href="/mota"><img
													src=" images/products/large/${imageUrl}" style="height: 90%;"
													alt="Product Name"></a>
											</div>
											<div class="productname">${productName}</div>
											<h4 class="price">${price}</h4>
											<div class="button_group">
												<button class="button add-cart" type="button">Thêm
													vào giỏ</button>
												
											</div>

										</div>
									


								</div>



							</div>
					</ul>
				</div>
			

				<div class="clearfix"></div>
				<div class="clearfix"></div>
				<%@include file="/WEB-INF/accers/nhanhang.jsp"%>
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
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.sequence-min.js"></script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/script.min.js"></script>
</body>
</html>