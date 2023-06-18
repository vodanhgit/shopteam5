<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Quản lý Đơn hàng</title>
</head>
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


						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">

							</ul>
							<span class="navbar-text" id="dropAccount" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <!-- 									<sec:authorize access="isAuthenticated()"> -->
								<span> Xin chào <!--<sec:authentication property="principal.username" /> -->
							</span> <!-- 									</sec:authorize> --> <i
								class="fa-solid fa-user fs-4"></i>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dropAccount"
								style="left: auto; right: 10px">
								<li><a class="dropdown-item" href="/home">Trang chủ</a></li>
								<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="bg-light p-3">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="management">Quản lý
									đơn hàng</a></li>
							<li class="breadcrumb-item active" aria-current="page">Chi
								tiết Đơn hàng</li>
						</ol>
					</nav>
				</div>
				<div class="px-4 p-3">
					<div class="row">
						<div class="col-3">
						<form action="/admin/infoMan" method="post">
								<div class="input-group">
									<input type="text" class="form-control" name="diaChi"
										value="${diaChi}">
									<button type="submit" class="btn btn-primary">Tìm kiếm</button>
								</div>
							</form>
							<!-- Modal add -->

						</div>
					
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>Mã hóa đơn</th>
										<th>Họ và tên</th>
										<th>Địa chỉ</th>
										<th>Tên sản phẩm</th>
										<th>Đơn giá</th>
										<th>Số lượng</th>
										<th>Thành tiền</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="hoaDon" items="${hds}">
										<c:forEach var="hoaDonChiTiet"
											items="${hoaDon.hoaDonChiTiets}">
											<tr>
												<td>${hoaDon.maHoaDon}</td>
												<td>${hoaDon.taiKhoan.hoTenNguoiDung}</td>
												<td>${hoaDon.diaChi}</td>
												<td>${hoaDonChiTiet.sanPham2.tenSanPham}</td>
												<td>${hoaDonChiTiet.donGia}</td>
												<td>${hoaDonChiTiet.soLuong}</td>
												<td>${hoaDonChiTiet.thanhTien}</td>
													<td><a class="btn btn-primary btn-sm"
											href="/admin/management" role="button" > <svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-red-circle"
													viewBox="0 0 16 16">
                    <path
														d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path
														d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                </svg>
										</a></td>
											</tr>
										</c:forEach>
									</c:forEach>
								</tbody>
							</table>



						</div>
					</div>
				</div>
			</div>
		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>