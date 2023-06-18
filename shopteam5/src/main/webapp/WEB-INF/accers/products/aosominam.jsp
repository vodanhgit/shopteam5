<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Áo Sơ Mi Nam - ShopTeam5</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<%@include file="/WEB-INF/accers/menu.jsp"%>
		</div>

		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="clearfix"></div>
						<!-- <div class="branch leftbar">
                <h3 class="title">
                  Branch
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      New
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Sofa
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Salon
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      New Trend
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Living room
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Bed room
                    </a>
                  </li>
                </ul>
              </div> -->
						<div class="clearfix"></div>
						<!-- <div class="price-filter leftbar">
                <h3 class="title">
                  Price
                </h3>
                <form class="pricing">
                  <label>
                    $ 
                    <input type="number">
                  </label>
                  <span class="separate">
                    - 
                  </span>
                  <label>
                    $ 
                    <input type="number">
                  </label>
                  <input type="submit" value="Go">
                </form>
              </div> -->
						<div class="clearfix"></div>
						<div class="clolr-filter leftbar">
							<h3 class="title">Màu</h3>
							<ul>
								<li><a href="#" class="red-bg"> light red </a></li>
								<li><a href="#" class=" yellow-bg"> yellow" </a></li>
								<li><a href="#" class="black-bg "> black </a></li>
								<li><a href="#" class="pink-bg"> pink </a></li>
								<li><a href="#" class="dkpink-bg"> dkpink </a></li>
								<li><a href="#" class="chocolate-bg"> chocolate </a></li>
								<li><a href="#" class="orange-bg"> orange-bg </a></li>
								<li><a href="#" class="off-white-bg"> off-white </a></li>
								<li><a href="#" class="extra-lightgreen-bg">
										extra-lightgreen </a></li>
								<li><a href="#" class="lightgreen-bg"> lightgreen </a></li>
								<li><a href="#" class="biscuit-bg"> biscuit </a></li>
								<li><a href="#" class="chocolatelight-bg">
										chocolatelight </a></li>
							</ul>
						</div>
						<div class="clearfix"></div>

						<div class="clearfix"></div>

						<div class="clearfix"></div>


						<div class="fbl-box leftbar">
							<h3 class="title">Facebook</h3>
							<span class="likebutton"> <a href="#"> <img
									src="images/fblike.png" alt="">
							</a>
							</span>
							<p>12k like shopteam5.</p>

							<div class="fbplug">
								<a href="#"> <span> <img src="images/fbicon.png"
										alt="">
								</span> Facebook
								</a>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="leftbanner">
							<img src="images/banner-small-01.png" alt="">
						</div>
					</div>
					<div class="col-md-9">
						<div class="banner">
							<div class="bannerslide" id="bannerslide">
								<ul class="slides">
									<li><a href="#"> <img
											src="images/banner-thoi-trang-nu.jpg" alt=""
											style="height: 100%" width="100%" />
									</a></li>
									<li><a href="#"> <img
											src="images/3cde53d8619069b98772edffe8c5dad1.jpg" alt=""
											style="width: 100%" height="100%" />
									</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="products-grid">
							<div class="toolbar">
								<div class="sorter">
									<div class="view-mode">
										<a href="" class="list"> List </a> <a href="#"
											class="grid active"> Grid </a>
									</div>
									<div class="sort-by">
										Lọc: <select name="">
											<option value="Default" selected>Tất cả</option>
											<option value="Name">Tên</option>
											<option value="Price">Giá</option>
										</select>
									</div>

								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a> <a href="#" class="active"> 1 </a> <a href="#"> 2 </a> <a
										href="#"> 3 </a> <a href="#" class="next-page"> <i
										class="fa fa-angle-right"> </i>
									</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="row">

								<c:forEach var="aosominam" items="${aosominam}">
									<div class="col-md-4 col-sm-6">
										<div class="products">
											<div class="thumbnail">
												<a href=""> <img
													src="images/products/large/${aosominam.hinhAnh}"
													alt="Product Name" style="height: 90%;">
												</a>
											</div>
											<div class="productname" style="display: none;"></div>
											<div class="productname">${aosominam.tenSanPham}</div>
											<h4 class="price">${aosominam.gia}VND</h4>
											<div class="button_group">
												<button class="button add-cart" type="button"
													formaction="/product/create">Thêm vào giỏ</button>

											</div>
										</div>
									</div>

								</c:forEach>





							</div>
							<div class="clearfix"></div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
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
	<script type="text/javascript" src="js/jquery-1.10.2.min.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>
	<script defer src="js/jquery.flexslider.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.sequence-min.js">
		
	</script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js">
		
	</script>
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>

</html>