<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- 	<%@ taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/images/shopteam5_logo.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/images/shopteam5_logo.png">
<title>Trang Chủ - Thông Tin Tài Khoản</title>
</head>

<style>
.mgs_errors {
	color: red;
	font-style: italic;
}
.mataikhoan{
display: none;
}
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

						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">

							</ul>
							<span class="navbar-text" id="dropAccount" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <sec:authorize
									access="isAuthenticated()">
									<span> Xin chào </span>
								</sec:authorize> <i class="fa-solid fa-user fs-4">
									${sessionScope.tenTaiKhoan}</i>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dropAccount"
								style="left: auto; right: 10px">
								<li><a class="dropdown-item" href="/home">Trang chủ</a></li>
								<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>

				<div class="px-4 p-3">
					<div class="row">
						<h4>Hồ sơ của tôi</h4>
						<hr>
						<div class="col-lg-6">
							<!-- 							<div class="px-5 p-5"> -->
							<!-- 								<div class="form-group"> -->
							<%-- 									<label style="width: 15%">Tên đăng nhập: </label> <label>${thongtintaikhoan.tenTaiKhoan}</label> --%>
							<!-- 								</div> -->
							<!-- 								<div class=" mt-3"> -->
							<!-- 									<div class="form-group mt-3"> -->
							<%-- 										<label style="width: 15%">Họ và Tên:</label> <label>${thongtintaikhoan.hoTenNguoiDung}</label> --%>

							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 								<div class="form-group mt-3"> -->
							<%-- 									<label style="width: 15%">Email:</label> <label>${thongtintaikhoan.email}</label> --%>

							<!-- 								</div> -->
							<!-- 								<div class="form-group mt-3"> -->
							<%-- 									<label style="width: 15%">Số điện thoại:</label> <label>${thongtintaikhoan.soDienThoai}</label> --%>

							<!-- 								</div> -->


							<!-- 								<div class="form-group mt-3"> -->
							<%-- 						<input type="radio" ${thongtintaikhoan.gioiTinh? 'checked':''} value="${thongtintaikhoan.gioiTinh?' true':'false' }"  --%>
							<%-- 										id="contactChoice1" name="contact" value="${thongtintaikhoan.gioiTinh}" /> <label --%>
							<!-- 										for="contactChoice1" class="me-3">Nam</label>  -->
							<%-- 										<input ${thongtintaikhoan.gioiTinh? 'checked':''}  --%>
							<%-- 										type="radio" id="contactChoice2" name="contact" value="${thongtintaikhoan.gioiTinh?' true':'false' }" /> --%>
							<!-- 									<label for="contactChoice2" class="me-3">Nữ</label>  -->

							<!-- 								</div> -->
							<!-- 								<div class="form-group mt-3"> -->
							<!-- 									<label style="width: 15%">Ngày sinh:</label>  -->
							<%-- 									<input type="date" value="${thongtintaikhoan.ngaySinh}"> --%>
							<!-- 								</div> -->
							<!-- 								<div class="form-group mt-3"> -->
							<!-- 									<label style="width: 15%">Hình Ảnh</label> <img -->
							<%-- 							src="/images/${thongtintaikhoan.hinhAnh}" width="50px"> --%>
							<!-- 								</div> -->

							<!-- 								<div class="form-group mt-3"> -->

							<%-- 									<a class="btn btn-danger" href="/chinhsua/${thongtintaikhoan.maTaiKhoan}" role="button">Lưu</a> --%>
							<!-- 								</div> -->
							<!-- 							</div> -->

							<table class="table">
								<tr>
									<th>Tên Tài Khoản:</th>
									<td>${thongtintaikhoan.tenTaiKhoan}</td>
								</tr>
								<tr>
									<th>Họ Tên:</th>
									<td>${thongtintaikhoan.hoTenNguoiDung}</td>
								</tr>
								<tr>
									<th>Email:</th>
									<td>${thongtintaikhoan.email}</td>
								</tr>
								<tr>
									<th>Số ĐT:</th>
									<td>0${thongtintaikhoan.soDienThoai}</td>
								</tr>
								<tr>
									<th>Giới Tính:</th>
									<td>${thongtintaikhoan.gioiTinh ? "Nam" : "Nữ"}</td>
								</tr>
								<tr>
									<th>Ngày Sinh:</th>
									<td>${thongtintaikhoan.ngaySinh}</td>
								</tr>
								<tr>
									<th>Hình Ảnh:</th>
									<td><img alt="" src="/images/${thongtintaikhoan.hinhAnh}"
										width="50px"></td>
								</tr>
								<tr>
<%-- 									<th><a href="/admin/chinhsua/${thongtintaikhoan.maTaiKhoan}" type="button" class="btn btn-primary"/> Chỉnh sửa</th> --%>
									<th><a type="button" class="btn btn-primary"/> Chỉnh sửa</th>
									<td></td>
								</tr>
							</table>
						</div>
<!-- 						<div class="col-lg-6 "> -->
<%-- 							<form:form action="/index" method="post" modelAttribute="item" --%>
<%-- 								name="account_form" enctype="multipart/form-data"> --%>
<%-- 								<form:input path="maTaiKhoan" placeholder="Id" hidden="hidden"/><br> --%>
<!-- 								<div class="container"> -->
<!-- 									<div class="row"> -->
<!-- 										<div class="col-sm-5"> -->
<!-- 											<div class="mb-1"> -->
<!-- 												<label>Họ tên</label> -->
<%-- 												<form:input class="form-control" path="hoTenNguoiDung" /> --%>
<%-- 												<form:errors path="hoTenNguoiDung" cssClass="mgs_errors" /> --%>
<!-- 											</div> -->
<!-- 											<div class="mb-1"> -->
<!-- 												<label for="email">Email</label> -->
<%-- 												<form:input class="form-control" path="email" /> --%>
<%-- 												<form:errors path="email" cssClass="mgs_errors" /> --%>
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="col-sm-5"> -->
<!-- 											<div class="mb-1"> -->
<!-- 												<label for="username">Số Điện Thoại</label> -->
<%-- 												<form:input class="form-control" path="soDienThoai" /> --%>
<%-- 												<form:errors path="soDienThoai" cssClass="mgs_errors" /> --%>
<!-- 											</div> -->
<!-- 											<div class="mb-1"> -->
<!-- 												<label for="pass">Mật khẩu</label> -->
<%-- 												<form:input class="form-control" path="matKhau" /> --%>
<%-- 												<form:errors path="matKhau" cssClass="mgs_errors" /> --%>
<!-- 											</div> -->
<!-- 											<div class="mb-1"> -->
<!-- 												<input type="file" class="form-control" name="photo_file" -->
<!-- 													style="display: none"> -->
<!-- 											</div> -->
<!-- 											<div class="mb-1" style="display: none"> -->
<!-- 												<label>Giới tính</label> -->
<%-- 												<form:radiobuttons path="gioiTinh" class="ms-3" --%>
<%-- 													items="${gioitinh}" /> --%>

<!-- 											</div> -->

<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<a type="button" class="btn btn-primary" href="capnhap"> Cập Nhập</a> -->
<!-- 								</div> -->
<%-- 							</form:form> --%>
<!-- 						</div> -->
					</div>
				</div>


			</div>
		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>