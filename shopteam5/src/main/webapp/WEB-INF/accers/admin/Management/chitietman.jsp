<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="/images/shopteam5_logo.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<title>Shopteam5 - Quản lý đơn hàng</title>
</head>
<style>
.button2 {
	display: inline-block;
	transition: all 0.2s ease-in;
	position: relative;
	overflow: hidden;
	z-index: 1;
	color: #090909;
	padding: 0.3em 1.0em;
	font-size: 18px;
	border-radius: 0.5em;
	background: #e8e8e8;
	border: 1px solid #e8e8e8;
	box-shadow: 6px 6px 12px #c5c5c5, -6px -6px 12px #ffffff;
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
	border-radius: 50%;
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

/* body {
	background: linear-gradient(45deg, #FFFFFF, #99FFFF);
}

table {
	background: linear-gradient(45deg, #FFFFFF, #FFCCFF);
} */
.custom-link:hover {
	background-color: gray;
	color: red;
	text-decoration: none;
}

.pagechitietman {
	margin-left: 34%;
}

.page-link {
	color: black;
}

.page-link:hover {
	background: #0099FF;
	color: #FFFFCC;
}

.input {
	width: 300px;
}

a {
	margin-right: 0px;
}
/* === removing default button style ===*/
</style>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">

				<%@include file="/WEB-INF/accers/admin/menuTaiKhoan.jsp"%>
			</div>
					<div class="col-10 px-0">
						<nav class="navbar navbar-expand-lg shadow-sm"
							style="background-color: #ffffff">
							<div class="container-fluid">
								<!-- <a class="navbar-brand" href="#">Navbar w/ text</a> -->

								<div class="collapse navbar-collapse" id="navbarText">
									<ul class="navbar-nav me-auto mb-2 mb-lg-0">
										<!-- <li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Features</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
								</li> -->
									</ul>
									<span class="navbar-text" id="dropAccount" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> <sec:authorize
											access="isAuthenticated()">
											<span> Xin chào <sec:authentication
													property="principal.username" />
											</span>
										</sec:authorize> <i class="fa-solid fa-user fs-4"></i>
									</span>
									<ul class="dropdown-menu" aria-labelledby="dropAccount"
										style="left: auto; right: 10px">
										<li><a class="dropdown-item" href="/home">Trang chính</a></li>
										<li><a class="dropdown-item" href="/doimatkhau">Đổi mật khẩu</a></li>
										<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
									</ul>
								</div>
							</div>
						</nav>
						<div class="bg-light p-3">
							<nav aria-label="breadcrumb"></nav>
						</div>
						<div class="px-4 p-3">
							
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
						<c:forEach var="hdct" items="${pagechitietman.content}">
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
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>