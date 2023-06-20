<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/shopteam5_logo.png">
<title>Chi tiết sản phẩm - ShopTeam5</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
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
			<%@include file="/WEB-INF/accers/menu.jsp"%>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">

				
						<div class="col-md-12	">
							<div class="products-details">
								<div class="preview_image">
									<div class="preview-small">
										<img id="zoom_03" src="${pageContext.request.contextPath}/images/products/large/${showsanpham_hinhanh}"
											data-zoom-image="images/products/large/${showsanpham_hinhanh}" alt="">
									</div>
					
								</div>
								<div class="products-description">
									<h5 class="name">${showsanpham_tensanpham}</h5>

									<p>
										Trạng thái: <span class=" light-red">${showsanpham_trangthai}</span>
									</p>
									<p>${showsanpham_mota}</p>
									<hr class="border">
									<div class="price">
										Giá : <span class="new_price"><fmt:formatNumber value="${showsanpham_gia}" currencySymbol="VNĐ" type="currency" />
<!-- </span> <span class="old_price"> 500.000 <sup> VND </sup> -->
										</span>
									</div>
									<hr class="border">
									<div class="wided">
<!-- 										<div class="qty"> -->
<!-- 											Số lượng &ensp;&ensp;: <input type="number" size="4" -->
<!-- 												title="Qty" value="1" name="quantity" min="1" max="10" -->
<!-- 												step="1"> -->


<!-- 										</div> -->
										<div class="qty">
									<form action="/motasize/${showsanpham_masanpham}" method="post">
										
											&ensp;&ensp;Size: <select onblur="this.form.submit()" name="size">
											<option  value="${showsize}">${showsize}</option>
											  <c:forEach var="showopsize" items="${showop}"> 
											  
												<option  value="${showopsize}">${showopsize}</option>
												</c:forEach> 
											</select>
											</form>
											
										</div>
										<div class="qty">		
										<form action="/motamau/${showsanpham_masanpham}" method="post">				
										<input type="hidden" name="size" value="${showsize}">		
											&ensp;&ensp;Màu: <select onblur="this.form.submit()" name="mau">
											<option  value="${showmautren}">${showmautren}</option>
											<c:forEach var="showopmau" items="${showmau}"> 
												<option>${showopmau.mau}</option>
												</c:forEach> 
											</select>
											</form>
										</div>

									</div>
									<form action="/themvaogiohang/${showsanpham_masanpham}" method="post">
									<div class="button_group" style="margin-top: 10px">
									<input type="hidden" name="size" value="${showsize}">
									<input type="hidden" name="mau" value="${showmautren}">
										<button class="button" type="submit">Thêm vào giỏ</button>

									</div>
									</form>
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
											${showsanpham_mota}
<!-- 												<div> -->
<!-- 													<strong>Chất liệu:&nbsp;</strong>vải tổng hợp&nbsp;cao cấp -->
<!-- 												</div> -->
<!-- 												<div> -->
<!-- 													<strong>Kiểu dáng:&nbsp;</strong>áo vest thiết kế chiết eo, -->
<!-- 													cài khuy bọc phía trước, tone màu hồng trơn<br> <strong>Sản -->
<!-- 														phẩm thuộc dòng sản phẩm :&nbsp;</strong>NEM NEW -->
<!-- 												</div> -->
<!-- 												<div> -->
<!-- 													<strong>Thông tin người mẫu:&nbsp;</strong>mặc sản phẩm -->
<!-- 													size 2 -->
<!-- 												</div> -->
<!-- 												<div> -->
<!-- 													<strong>Sản phẩm kết hợp:</strong>chân váy Z16862 -->
<!-- 												</div> -->
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

				
<!-- 					<div class="col-md-3"> -->
<!-- 						<div class="clearfix"></div> -->

<!-- 						<div class="clearfix"></div> -->

<!-- 						<div class="clearfix"></div> -->
					
<!-- 						<div class="clearfix"></div> -->

<!-- 					</div> -->

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