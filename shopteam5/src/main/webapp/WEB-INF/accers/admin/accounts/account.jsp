<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib prefix="sec" --%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Shopteam5</title>

<style>
.mgs_errors {
	color: red;
	font-style: italic;
}
</style>
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
								data-bs-toggle="dropdown" aria-expanded="false">
								<span> Xin chào </span>  <i
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
				<div class="px-4 p-3">
					<div class="row">
											<form:form action="account" method="post"
												modelAttribute="item" name="account_form"
												enctype="multipart/form-data" >
											<div class="container" >
											<div class="row">
												<div class="col-sm-5">
												<div class="mb-1">
													<label>Họ tên</label>
													<form:input class="form-control" path="hoTenNguoiDung" />
													<form:errors path="hoTenNguoiDung" cssClass="mgs_errors" />
												</div>
												<div class="mb-1">
													<label for="email">Email</label>
													<form:input class="form-control" path="email" />
													<form:errors path="email" cssClass="mgs_errors" />
												</div>
												</div>
												<div class="col-sm-5">
												<div class="mb-1">
													<label for="username">Tên đăng nhập</label>
													<form:input class="form-control" path="tenTaiKhoan" />
													<form:errors path="tenTaiKhoan" cssClass="mgs_errors" />
												</div>
												<div class="mb-1">
													<label for="pass">Mật khẩu</label>
													<form:input class="form-control" path="matKhau" />
													<form:errors path="matKhau" cssClass="mgs_errors" />
												</div>
												<div class="mb-1">
													<input type="file" class="form-control" name="photo_file" style="display: none">
												</div>
												<div class="mb-1" style="display: none">
													<label>Giới tính</label>
													<form:radiobuttons path="gioiTinh" class="ms-3"
  														items="${gioitinh}" />  

												</div>
												<div class="mb-1">
													<label>Quyền</label>
													<form:radiobuttons path="quyen" class="ms-3"
														items="${quyen}" />

												</div>
												</div>
												</div>
												<button class="btn btn-primary" formaction="/admin/create">
													Thêm</button>
											</div>
												
												<div class="position-fixed top-0 end-0 p-5"
													style="z-index: 11">
													<div style="background-color: #2ecc71" id="liveToast"
														class="toast align-items-center text-white border-0"
														role="alert" aria-live="assertive" aria-atomic="true">
														<div class="d-flex">
															<div class="toast-body">Thêm thành công !</div>
															<button type="button"
																class="btn-close btn-close-white me-2 m-auto"
																data-bs-dismiss="toast" aria-label="Close"></button>
														</div>
													</div>
												</div>
											</form:form>
											
											
											
												
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Mã tài khoản</th>
										<th>Họ và Tên</th>
										<th>Tên tài khoản</th>
										<th>Giới Tính</th>
										<th>Email</th>
										<th>Hình ảnh</th>
										<th>Quyền</th>
										<th colspan="2">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${items}">
									<tr>
											<td>${item.maTaiKhoan}</td>
											<td>${item.hoTenNguoiDung}</td>
											<td>${item.tenTaiKhoan}</td>
											<td>${item.gioiTinh  == true ? "Nam" : "Nữ"}</td>
											<td>${item.email}</td>
											<td style="text-align: center"><img
												src="/images/${item.hinhAnh}" width=50px /></td>
											<td>${item.quyen == true ? "Admin" : "Client"}</td>
											<td class="text-center"><a
												href="/admin/editAccount/${item.maTaiKhoan}">Đổi quyền</a></td>
											
										</tr>
									</c:forEach>
									 
								</tbody>
							</table>
							<div style="padding-left: 45%">
							<td colspan="7" style="text-align: center;">
             <div><p>Trang số: ${itemTaiKhoan.number+1}</p></div>
				<div>
				
					<c:forEach var="pagetr" begin="0" end="${itemTaiKhoan.totalPages}">
						<a href="/admin/account?m=${pagetr}" style="font-size: 25px; font-weight: lighter; text-decoration: none">${pagetr+1}&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
			</td>
							</div>

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>