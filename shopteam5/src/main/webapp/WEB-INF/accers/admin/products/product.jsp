<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
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
<title>Shopteam5</title>
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
				<br>
				<div class="container">
					<div class="border border-2">
						<div class="container">
							<div class="row">
								<div class="col-sm-5">
									<div class="panel-heading">Hình ảnh</div>
									<div class="panel-body">
										<!-- <img src="images/products/male/1.png" style="height: 300px"
											class="img-thumbnail" alt=""]> -->
										<input type="file" id="file-upload" required />
									</div>
								</div>

								<div class="col-sm-4">
									<form action="">
										<div class="mb-1">
											<label for="product-name" class="form-label">Mã sản
												phẩm</label> <input type="text" class="form-control"
												id="product-name">
										</div>
										<div class="mb-1">
											<label for="product-name" class="form-label">Loại</label> <input
												type="text" class="form-control" id="product-name">
										</div>
										<div class="mb-1">
											<label for="description" class="form-label">Mô tả</label>
											<textarea class="form-control" id="description" rows="4"></textarea>
										</div>

									</form>

								</div>
								<div class="col-sm-3">
									<form action="">

										<div class="mb-1">
											<label for="product-name" class="form-label">Tên sản
												phẩm</label> <input type="text" class="form-control"
												id="product-name">
										</div>
										<div class="mb-1">
											<label for="quantity" class="form-label">Số lượng</label> <input
												type="number" class="form-control" id="quantity">
										</div>
										<div class="mb-1">
											<label for="product-name" class="form-label">Giá</label> <input
												type="text" class="form-control" id="product-name">
										</div>
										<div class="mb-1">
											<label for="product-name" class="form-label">Giá giảm</label>
											<input type="text" class="form-control" id="product-name">
										</div>
										<br>
										<button type="button" class="btn btn-primary">Thêm</button>
										&nbsp;&nbsp;
										<button type="button" class="btn btn-primary">Sửa</button>
										&nbsp;&nbsp;
										<button type="button" class="btn btn-primary">Làm mới</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="table-responsive mt-3" style="overflow-x: auto">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Mã</th>
									<th>Tên Sản Phẩm</th>
									<th>Loại</th>
									<th>Số lượng</th>
									<th>Giá</th>
									<th>Hình Ảnh</th>
									<th>Mô Tả</th>
									<th>Mô Tả</th>
									<th>Mô Tả</th>
									<th>Mô Tả</th>
									<th>Mô Tả</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.maSanPham}</td>
										<td>${item.tenSanPham}</td>
										<td>${item.loai}</td>
										<td>${item.soLuong}</td>
										<td>${item.gia}</td>
										<td><img alt="" src="/images/products/${item.hinhAnh}"
											width="50" height="50"></td>
										<td>${item.moTa}</td>
										<td>${item.moTa}</td>
										<td>
											<%-- <button class="btn btn-primary" data-bs-toggle="modal"
												data-bs-target="#modalUpdate_${pro.id }">
												<i class="fa-solid fa-pen-to-square"></i>
											</button> Modal update --%>
										</td>


									</tr>
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