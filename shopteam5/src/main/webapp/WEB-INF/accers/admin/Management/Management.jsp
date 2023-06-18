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
.custom-link {
	color: black;
	font: bold;
	border-radius: 2px;
	text-decoration: none;
}

.custom-link:hover {
	background-color: gray;
	color: red;
	text-decoration: none;
}

.pagehd {
	margin-left: 34%;
}

.page-link {
	color: black;
}

.page-link:hover {
	background: #0099FF;
	color: #FFFFCC;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">

				<%@include file="/WEB-INF/accers/admin/menuTaiKhoan.jsp"%>
			</div>
			<c:choose>
								<c:when test="${empty sessionScope.username}">
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
								<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="bg-light p-3">
					<nav aria-label="breadcrumb"></nav>
				</div>
				<div class="px-4 p-3">
					<div class="row">

						<div class="col-3">
							<input type="date" name="ngay" value="${ngay}"
								class="form-control mr-sm-2">

							<form action="/admin/management" method="get">
								<div class="input-group">
									<input type="text" class="form-control" name="trangThai"
										value="${trangThai}">
									<button type="submit" class="btn btn-primary">Tìm kiếm</button>
								</div>
							</form>

						</div>

						<div class="col-3">
					
							<form:form action="/admin/management" modelAttribute="hd">

								<div class="timkiem">
									<form:input path="maHoaDon" class="form-control"
										hidden="hidden" />
									<form:input path="diaChi" class="form-control" hidden="hidden" />
									<form:input path="ngayDatHang" class="form-control"
										hidden="hidden" />
									<form:input path="tongTien" class="form-control"
										hidden="hidden" />
									
									<form:input path="ghiChu" class="form-control" hidden="hidden" />
									<form:input path="taiKhoan" class="form-control"
										hidden="hidden" />

								</div>
									<div class="card">
										<div class="card-body">
											<!-- Nội dung bên trong khung -->
											<h4 class="card-title">
												<label for="trangThai" class="form-label">Cập nhật
													trạng thái:</label>
											</h4>
											<p class="card-text">${hd.trangThai}</p>
											<input type="hidden" name="maHoaDon" value="${hd.maHoaDon}">
											
											<div class="mb-3">
												<select class="form-select" name="trangThai">
													<option value="Đã nhận đơn"
														${hd.trangThai == 'Đã nhận đơn' ? 'selected' : ''}>Đã
														nhận đơn</option>
													<option value="Đang vận chuyển"
														${hd.trangThai == 'Đang vận chuyển' ? 'selected' : ''}>Đang
														vận chuyển</option>
													<option value="Đã giao hàng"
														${hd.trangThai == 'Đã giao hàng' ? 'selected' : ''}>Đã
														giao hàng</option>
												</select>
											</div>
											
										</div>
										<button type="submit" formaction="/admin/updatehd" class="btn btn-primary">Cập
												nhật</button>
									</div>
						
								
						</div>
						<div class="col-3">

							<div class="btn-group">
								<button type="button" class="btn btn-danger dropdown-toggle"
									data-bs-toggle="dropdown" aria-expanded="false">Sắp
									xếp giảm dần</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item"
										href="/admin/management?field=maHoaDon">Mã hóa đơn</a></li>
									<li><a class="dropdown-item"
										href="/admin/management?field=tongTien">Tổng tiền</a></li>
									<li><a class="dropdown-item"
										href="/admin/management?field=trangThai">Trạng thái</a></li>
									<li><a class="dropdown-item"
										href="/admin/management?field=ngayDatHang">Ngày đặt</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					</form:form>
					<div class="table-responsive mt-5" style="overflow-x: auto">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Mã hóa đơn</th>
									<th>Địa chỉ</th>
									<th>Ngày đặt hàng</th>
									<th>Tổng tiền</th>
									<th>Trạng thái</th>


									<th></th>

								</tr>
							</thead>
							<tbody>

								<c:forEach var="hd" items="${hds}">
									<tr>
										<td>${hd.maHoaDon}</td>
										<td>${hd.diaChi}</td>
										<td>${hd.ngayDatHang}</td>
										<td><span style="color: red;"><fmt:formatNumber
													value="${hd.tongTien}" currencySymbol="VNĐ" type="currency" /></span></td>
										<td><a href="/admin/edithd/${hd.maHoaDon}"
											class="custom-link">${hd.trangThai}</a></td>

										<td><a class="btn btn-primary btn-sm"
											href="/admin/infoMan" role="button"> <svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-info-circle"
													viewBox="0 0 16 16">
                    <path
														d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path
														d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                </svg>
										</a></td>
									</tr>
								</c:forEach>


							</tbody>
						</table>



					</div>



				</div>
			</div>
							
								</c:when>
								<c:otherwise>

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
								<li><a class="dropdown-item" href="/home">Trang chủ</a></li>
								<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="bg-light p-3">
					<nav aria-label="breadcrumb"></nav>
				</div>
				<div class="px-4 p-3">
					<div class="row">


					<div class="table-responsive mt-5" style="overflow-x: auto">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Mã hóa đơn</th>
									<th>Địa chỉ</th>
									<th>Ngày đặt hàng</th>
									<th>Tổng tiền</th>
									<th>Trạng thái</th>


									<th></th>

								</tr>
							</thead>
							<tbody>

								<c:forEach var="hd" items="${hds}">
									<tr>
										<td>${hd.maHoaDon}</td>
										<td>${hd.diaChi}</td>
										<td>${hd.ngayDatHang}</td>
										<td><span style="color: red;"><fmt:formatNumber
													value="${hd.tongTien}" currencySymbol="VNĐ" type="currency" /></span></td>
										<td><a 
											class="custom-link">${hd.trangThai}</a></td>

										<td><a class="btn btn-primary btn-sm"
											href="/admin/infoMan" role="button"> <svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-info-circle"
													viewBox="0 0 16 16">
                    <path
														d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path
														d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                </svg>
										</a></td>
									</tr>
								</c:forEach>


							</tbody>
						</table>



					</div>



				</div>
			</div>
							
						</c:otherwise>
							</c:choose>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>