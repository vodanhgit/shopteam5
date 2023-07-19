<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/shopteam5_logo.png">
<title>Shopteam5 - Giỏ hàng</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" type="text/css"
	media="screen" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">

</head>
<style>
.button2 {
	width: 70px;
	display: inline-block;
	height: 30px;
	transition: all 0.2s ease-in;
	position: relative;
	overflow: hidden;
	z-index: 1;
	color: #090909;
	padding: 0.3em 1.0em;
	font-size: 10px;
	border-radius: 0.5em;
	background: #FFFFFF;
	border: 1px solid black;
	display: inline-block;
}

.button2:active {
	color: #666;
	box-shadow: inset 4px 4px 12px #c5c5c5, inset -4px -4px 12px #ffffff;
}

.button2:before {
	position: absolute;
	left: 50%;
	transform: translateX(-50%) scaleY(1) scaleX(1.25);
	top: 100%;
	width: 140%;
	height: 180%;
	background-color: rgba(0, 0, 0, 0.05);
	border-radius: 20%;
	display: block;
	transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
	z-index: -1;
}

.button2:after {
	content: "";
	position: absolute;
	left: 55%;
	transform: translateX(-50%) scaleY(1) scaleX(1.45);
	top: 180%;
	width: 160%;
	height: 190%;
	background-color: #009087;
	border-radius: 50%;
	display: block;
	transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
	z-index: -1;
}

.button2:hover {
	color: #ffffff;
	border: 1px solid #009087;
}

.button2:hover:before {
	top: -35%;
	background-color: #009087;
	transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
}

.button2:hover:after {
	top: -45%;
	background-color: #009087;
	transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
}

.custom-link {
	color: black;
	font: bold;
	border-radius: 2px;
	text-decoration: none;
}

.input {
	width: 150px;
	height: 25px;
	border: 1.5px solid black;
}

.pagechitiet {
	margin-left: 34%;
}

.page-link {
	color: black;
}

.page-link:hover {
	background: #0099FF;
	color: #FFFFCC;
}

strong {
	color: red;
}
/* === removing default button style ===*/
</style>
<body>

	<div class="header">
		<%@include file="/WEB-INF/accers/menu.jsp"%>
	</div>
	<div class="container">
		<div class="col-md-5" style="margin-top: 20px">
			<form action="/infoMan" method="get">
				<input class="input" name="diaChi" value="${diaChi}">
				<button type="submit" class="button2">Tìm kiếm</button>
			</form>

		</div>
		<div class="row">



			<div class="col-md-12" style="margin-top: 30px">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>Mã hóa đơn chi tiết</th>
							<th>Mã sản phẩm</th>
							<th>Số lượng</th>
							<th>Màu</th>
							<th>Size</th>			
							<th>Đơn giá</th>
							<th>Thành tiền</th>
							<th>Mã hóa đơn</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="hdct" items="${pagechitiet.content}">
								<tr>
								<td>${hdct.maHoaDonChiTiet}</td>
									<td>${hdct.sanPham2.maSanPham}</td>
									<td>${hdct.soLuong}</td>
									<td>${hdct.mau}</td>
									<td>${hdct.size}</td>
									
									<td><span style="color: red;"><fmt:formatNumber
												value="${hdct.donGia}" currencySymbol="VNĐ"
												type="currency" /></span></td>
									<td><span style="color: red;"><fmt:formatNumber
												value="${hdct.thanhTien}" currencySymbol="VNĐ"
												type="currency" /></span></td>
									<td><strong>${hdct.hoaDon.maHoaDon}</strong></td>
								</tr>
							</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation example">
					<ul class="pagination" style="padding-left: 40%">
						<li class="page-item"><a class="page-link"
							href="/infoMan?f=0"><svg xmlns="http://www.w3.org/2000/svg"
									width="12" height="12 fill="
									currentColor"
									class="bi bi-chevron-double-left"
									viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
  <path fill-rule="evenodd"
										d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
</svg></a></li>
						<li class="page-item"><a class="page-link"
							href="/infoMan?f=${pagechitiet.number-1}"><svg
									xmlns="http://www.w3.org/2000/svg" width="12" height="12"
									fill="currentColor" class="bi bi-chevron-left"
									viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
</svg></a></li>

						<c:forEach var="i" begin="0" end="${pagechitiet.totalPages}">

							<li class="page-item"><a class="page-link"
								href="/infoMan?f=${i}">${i + 1}</a></li>
						</c:forEach>
						<li class="page-item"><a class="page-link"
							href="/infoMan?f=${pagechitiet.number+1}"><svg
									xmlns="http://www.w3.org/2000/svg" width="12" height="12"
									fill="currentColor" class="bi bi-chevron-right"
									viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
</svg></a></li>
						<li class="page-item"><a class="page-link"
							href="/infoMan?f=${pagechitiet.totalPages-1}"><svg
									xmlns="http://www.w3.org/2000/svg" width="12" height="12"
									fill="currentColor" class="bi bi-chevron-double-right"
									viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z" />
  <path fill-rule="evenodd"
										d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z" />
</svg></a></li>
					</ul>
				</nav>
			</div>
		</div>



	</div>
	<div class="footer" style="margin-top: 60px">
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