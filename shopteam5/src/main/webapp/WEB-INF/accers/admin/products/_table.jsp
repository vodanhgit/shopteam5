<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<body>
	<form action="/admin/product" method="post">
		<input name="keywords" value="">
		<button>Search</button>
	</form>
	<div class="table-responsive mt-3" style="overflow-x: auto">

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Mã Sản Phẩm</th>
					<th>Tên Sản Phẩm</th>
					<th>Loại</th>
					<th>Số Lượng</th>
					<th>Giá</th>
					<th>Hình Ảnh</th>
					<th>Màu</th>
					<th>Kích cỡ</th>
					<th>Mô Tả</th>
					<th>Trạng Thái</th>

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
						<td><img alt="" src="/images/products/large/${item.hinhAnh}"
							width="80" height="80"></td>
						<td>${item.mau}</td>
						<td>${item.size}</td>
						<td>${item.moTa}</td>
						<td>${item.trangThai}</td>
						<td><a href="/admin/edit/${item.maSanPham}">Edit</a> <br>
							<a href="">Khuyến mãi</a></td>

					</tr>
				</c:forEach>
			</tbody>

		</table>
		<div style="padding-left: 45%">
			<nav aria-label="Page navigation example">
				<ul class="pagination">

					<c:forEach var="i" begin="0" end="${page.totalPages + 3}">
						<a class="page-link" href="/admin/product?m=${i}">${i+1} </a>
					</c:forEach>

				</ul>
			</nav>

		</div>
	</div>
</body>
</html>