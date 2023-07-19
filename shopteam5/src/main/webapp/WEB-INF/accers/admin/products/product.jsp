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
</head>
<style>
.mgs_errors {
	color: red;
	font-style: italic;
}
</style>
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




					<form:form action="/admin/products/product" modelAttribute="item"
						enctype="multipart/form-data" method="post">
						<form:input path="maSanPham" placeholder="má" hidden="hidden" />
						<br>
						<div class="row">
							<div class="col-sm-4">


								<div class="mb-1">
									<label for="product-name" class="form-label">Tên sản
										phẩm:</label>
									<form:input class="form-control" path="tenSanPham" />
									<form:errors path="tenSanPham" cssClass="mgs_errors" />
								</div>

								<div class="mb-1">
									<label for="product-name" class="form-label">Loại:</label>
									<form:input class="form-control" path="loai" />
									<form:errors path="loai" cssClass="mgs_errors" />
								</div>

								<div class="mb-1">
									<label for="product-name" class="form-label">Giá:</label>
									<form:input class="form-control" path="gia"
										data-type="currency" data-symbol="VNĐ" data-decimal=","
										data-thousands="." />

									<form:errors path="gia" cssClass="mgs_errors" />
								</div>
								<div class="mb-1">
									<label for="product-name" class="form-label">Giá Gốc:</label>
									<form:input class="form-control" path="giaGoc" id="giaGoc" />
									<form:errors path="gia" cssClass="mgs_errors" />
								</div>
								<div class="mb-1">
									<label for="product-name" class="form-label">Giá Khuyến
										Mãi (%):</label>
									<form:input class="form-control" path="giaKhuyenMai" id="giakm"/>
									 <form:errors path="gia" cssClass="mgs_errors" /> 
								</div>

							</div>
							<div class="col-sm-5">

								<br> <label for="product-name" class="form-label">Trạng
									thái:</label> &nbsp;&nbsp;
								<form:select path="trangThai">
									<form:option value="">hết hàng</form:option>
									<form:options items="${list_trangthai}" />
								</form:select>
								<form:errors path="trangThai" cssClass="mgs_errors" />
								<div class="mb-1">
									<label for="description" class="form-label">Mô tả:</label>
									<form:textarea class="form-control" rows="4" path="moTa" />
									<form:errors path="moTa" cssClass="mgs_errors" />
								</div>
							</div>
							<div class="col-sm-3">
								<div class="panel-heading">Hình ảnh:</div>
								<img style="height: 250px" class="img-thumbnail" id='img' alt=""
									src="/images/products/large/${item.hinhAnh}"> <input
									type="file" accept=".jpg, .png" name="file" id="imgInput"
									value="${item.hinhAnh}">
								<div class="mgs_errors">${messages_img}</div>
							</div>

						</div>
						<br>
						<button formaction="/admin/createsp" class="btn btn-primary">Thêm</button>&nbsp;&nbsp;
				<button formaction="/admin/updatesp" class="btn btn-primary">Sửa</button>&nbsp;&nbsp;
				<a href="/admin/product"><button type="button"
								class="btn btn-primary">Làm mới</button></a>

						<div class="mgs_errors">${messages }</div>

					</form:form>
					<br>
				</div>
				<!-- 	table -->
				<div class="table-responsive mt-3" style="overflow-x: auto">



					<table class="table table-bordered">
						<thead>
							<tr>
								<th>MaSanPham</th>
								<th>TenSanPham</th>
								<th>Loai</th>
								<th>Gia</th>
								<th>GiaGoc</th>
								<th>HinhAnh</th>
								<th>MoTa</th>
								<th>TrangThai</th>
								<th>GiaKhuyenMai</th>


							</tr>
						</thead>
						<tbody>
							<c:forEach var="sanPham" items="${items}">

								<tr>
									<td>${sanPham.maSanPham}</td>
									<td>${sanPham.tenSanPham}</td>
									<td>${sanPham.loai}</td>
									<td>${sanPham.gia}</td>
									<td>${sanPham.giaGoc}</td>
									<td><img alt="${sanPham.hinhAnh}"
										src="/images/products/large/${sanPham.hinhAnh}" width="80"
										height="80"></td>
									<td>${sanPham.moTa}</td>
									<td>${sanPham.trangThai}</td>
									<td>${sanPham.giaKhuyenMai}</td>

									<td><a href="/admin/edit/${sanPham.maSanPham}">Edit</a> <br></td>
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
										<a class="page-link" href="/admin/product?m=${i}">${i+1} </a>
									</c:forEach>
								</ul>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	const inputImg = document.getElementById('imgInput')
	const img = document.getElementById('img')
	
	function getImg(event){

	     const file = event.target.files[0]; // 0 = get the first file

	     // console.log(file);

	     let url = window.URL.createObjectURL(file);

	     // console.log(url)

	     img.src = url
	}

	inputImg?.addEventListener('change', getImg)</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
</body>
</html>