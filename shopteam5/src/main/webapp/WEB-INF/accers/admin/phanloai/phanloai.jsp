<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Shopteam5</title>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow" style="background-color: #0a3d62;">
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
								<li><a class="dropdown-item" href="/home">Trang chính</a></li>
										<li><a class="dropdown-item" href="/doimatkhau">Đổi mật khẩu</a></li>
										<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<br>
				<div class="container">
					<form:form action="/admin/phanloai/phanloai"
						modelAttribute="itempl">
						<form:input path="maPhanLoai" placeholder="" hidden="hidden" />
						<br>
						<div class="row">
							<div class="col-sm-7">
								<div class="mb-1">
									<label for="product-name" class="form-label">Mã Sản
										Phẩm:</label>
									<form:input class="form-control" path="sanPham4.maSanPham" />
									<%-- <form:errors path="sanPham4.maSanPham" cssClass="mgs_errors" />  --%>
								</div>

								<div class="mb-1">
									<label for="product-name" class="form-label">Số lượng:</label>
									<form:input class="form-control" path="soLuong" />
									<form:errors path="soLuong" cssClass="mgs_errors" />
								</div>


							</div>
							<div class="col-sm-5">
								<div class="mb-1">
									<label for="product-name" class="form-label">Màu: </label>
									<form:input class="form-control" path="mau" />
									<form:errors path="mau" cssClass="mgs_errors" />
								</div>
								<div class="mb-1">
									<label for="product-name" class="form-label">Size:</label>
									<form:input class="form-control" path="size" />
									<form:errors path="size" cssClass="mgs_errors" />
								</div>
							</div>
						</div>

						<br>
						<button formaction="/admin/createpl" class="btn btn-primary">Thêm</button>
											&nbsp;&nbsp;
											<button formaction="/admin/updatepl" class="btn btn-primary">Sửa</button>
											&nbsp;&nbsp; <a href="/admin/phanloai"><button
								type="button" class="btn btn-primary">Làm mới</button></a>

						<div class="mgs_errors">${messages }</div>
					</form:form>
					<br>
				</div>






				<!-- table phân loại -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Mã Phân loại</th>
							<th>Mã Sản Phẩm</th>
							<th>Số Lượng</th>
							<th>Màu</th>
							<th>Size</th>



						</tr>
					</thead>
					<tbody>
						<c:forEach var="phanloai" items="${itemspl}">

							<tr>
								<td>${phanloai.maPhanLoai}</td>
								<td>${phanloai.sanPham4.maSanPham}</td>
								<td>${phanloai.soLuong}</td>
								<td>${phanloai.mau}</td>
								<td>${phanloai.size}</td>
								<td><a href="/admin/editpl/${phanloai.maPhanLoai}">Edit</a>
									<br></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="border border-2">




					<div style="padding-left: 45%">
							<nav aria-label="Page
						navigation example">
								<ul class="pagination">
									<c:forEach var="i" begin="0" end="${page.totalPages + 3}">
										<a class="page-link" href="/admin/phanloai?n=${i}">${i+1} </a>
									</c:forEach>
								</ul>
							</nav>

						</div>
				</div>
			</div>



		</div>

	</div>




	<br>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
</body>
</html>