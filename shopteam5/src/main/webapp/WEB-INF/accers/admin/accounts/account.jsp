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
						<div class="col-3">
							<button class="btn btn-info text-white" data-bs-toggle="modal"
								data-bs-target="#modalAdd">Thêm mới tài khoản</button>
							<!-- Modal add -->
							<div class="modal fade" id="modalAdd" data-bs-backdrop="static"
								data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Thêm
												mới tài khoản</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form:form action="account" method="post"
												modelAttribute="item" name="account_form"
												enctype="multipart/form-data">

												<div>
													<label for="name">Họ tên</label>
													<form:input class="form-control" path="hoTenNguoiDung" />

												</div>
												<div>
													<label for="email">Email</label>
													<form:input class="form-control" path="email" />
												</div>
												<div>
													<label for="username">Tên đăng nhập</label>
													<form:input class="form-control" path="tenTaiKhoan" />
												</div>
												<div>
													<label for="pass">Mật khẩu</label>
													<form:input class="form-control" path="matKhau" />
												</div>
												<div>
													<label for="hinhanh">Hình ảnh</label> <input type="file"
														class="form-control" name="photo_file">
												</div>
												<div>
													<label>Giới tính</label>
													<form:radiobuttons path="gioiTinh" class="ms-3"
														items="${gioitinh}" />

												</div>
												<div>
													<label>Quyền</label>
													<form:radiobuttons path="quyen" class="ms-3"
														items="${quyen}" />

												</div>
												<button class="btn btn-primary" formaction="/admin/create">
													Thêm</button>
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
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
						<input name="tentaikhoan" value="tentaikhoan" placeholder="Tên tài khoản">
						<button>Tìm kiếm</button>
						</div>
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
								<nav aria-label="Page navigation example">
									<ul class="pagination">

										<c:forEach var="i" begin="0" end="${page.totalPage +3}">
											
											<a class="page-link" href="/admin/account?m=${i}">${i+1}
											</a>
											
											
										</c:forEach>
											

									</ul>
								</nav>

							</div>

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>