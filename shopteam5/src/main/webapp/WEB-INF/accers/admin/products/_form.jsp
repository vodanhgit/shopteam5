<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="border border-2">
		<div class="container">
			<form:form action="/admin/products/product" modelAttribute="item"
				enctype="multipart/form-data">
				<form:input path="maSanPham" placeholder="má" hidden="hidden" />
				<br>
				<div class="row">
					<div class="col-sm-4">
						<%-- <div class="mb-1"> 
							<label for="product-name" class="form-label">Mã sản
								phẩm:</label>
							<form:input class="form-control" path="maSanPham" />
							<form:errors path="maSanPham" cssClass="mgs_errors" />
						</div>
 --%>
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
							<label for="quantity" class="form-label">Số lượng:</label>
							<form:input class="form-control" path="soLuong" />
							<form:errors path="soLuong" cssClass="mgs_errors" />
						</div>

						<div class="mb-1">
							<label for="product-name" class="form-label">Giá:</label>
							<form:input class="form-control" path="gia" />
							<form:errors path="gia" cssClass="mgs_errors" />
						</div>

					</div>
					<div class="col-sm-5">

						<div class="mb-2" style="margin-top: 20px">
							<label for="product-name" class="form-label">Màu:</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

							<form:select path="mau">
								<form:option value=""></form:option>
								<form:options items="${list_mau}" />
							</form:select>
							<form:errors path="mau" cssClass="mgs_errors" />
						</div>
						<label for="product-name" class="form-label">Kích cỡ:</label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

						<form:select path="size">
							<form:option value=""></form:option>
							<form:options items="${list_size}" />
						</form:select>
						<form:errors path="size" cssClass="mgs_errors" />
						<br> <label for="product-name" class="form-label">Trạng
							thái:</label> &nbsp;&nbsp;
						<form:select path="trangThai">
							<form:option value=""></form:option>
							<form:options items="${list_category}" />
						</form:select>
						<form:errors path="trangThai" cssClass="mgs_errors" />
						<div class="mb-1">
							<label for="description" class="form-label">Mô tả:</label>
							<form:textarea class="form-control" rows="4" path="moTa" />
						</div>
					</div>
					<div class="col-sm-3">
						<div class="panel-heading">Hình ảnh:</div>
						<img style="height: 250px" class="img-thumbnail" id='img' alt=""
							src="/images/products/large/${item.hinhAnh}"> <input
							type="file" accept=".jpg, .png" name="file" id="imgInput" >
					</div>
				</div>
				<br>
				<button formaction="/admin/createsp" class="btn btn-primary">Thêm</button>&nbsp;&nbsp;
				<button formaction="/admin/update" class="btn btn-primary">Sửa</button>&nbsp;&nbsp;
				<a href="/admin/product"><button type="button"
						class="btn btn-primary">Làm mới</button></a>

				<div class="mgs_errors">${messages }</div>

			</form:form>
			<br>
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