<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
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
				
<%@include file="/WEB-INF/accers/admin/menuTaiKhoan.jsp" %>
			</div>
			<div class="col-10 px-0">
				<nav class="navbar navbar-expand-lg shadow-sm"
					style="background-color: #ffffff">
					<div class="container-fluid">
					
						
						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								
							</ul>
							<span class="navbar-text" id="dropAccount" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> 
<!-- 									<sec:authorize access="isAuthenticated()"> -->
									<span>
     									Xin chào <!--<sec:authentication property="principal.username" /> -->
									</span>
<!-- 									</sec:authorize> -->
							 <i class="fa-solid fa-user fs-4"></i>
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
							<li class="breadcrumb-item"><a href="management">Quản lý đơn hàng</a></li>
							<li class="breadcrumb-item active" aria-current="page">Chi tiết Đơn hàng</li>
						</ol>
					</nav>
				</div>
				<div class="px-4 p-3">
					<div class="row">
						<div class="col-3">
							<button class="btn btn-info text-white" data-bs-toggle="modal"
								data-bs-target="#modalAdd">Add new</button>
							<!-- Modal add -->
							<div class="modal fade" id="modalAdd" data-bs-backdrop="static"
								data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Add a
												new order</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form:form action="/admin/orders/store" method="post"
												modelAttribute="order">
												<div>
													<label>Account ID</label>
													<form:select path="account" class="form-select">
														<c:forEach items="${ listAcc }" var="acc">
															<form:option value="${ acc.id }">
																${ acc.id }
															</form:option>
														</c:forEach>
													</form:select>
												</div>
												<div>
													<label>Shipping address</label>
													<form:input path="shippingAddress" class="form-control" />
												</div>
												<div>
													<label>Order status</label>
													<form:input path="orderStatus" class="form-control" />
												</div>
												<button class="btn btn-primary w-100 mt-3" id="liveToastBtn">Add</button>
												<div class="position-fixed top-0 end-0 p-5"
													style="z-index: 11">
													<div style="background-color: #2ecc71" id="liveToast"
														class="toast align-items-center text-white border-0"
														role="alert" aria-live="assertive" aria-atomic="true">
														<div class="d-flex">
															<div class="toast-body">Successful !</div>
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
						<div class="col-3 offset-6">
							<a type="button" class="btn btn-primary"> <span><div
										class="timkiem">
										<div class="search-bar">
											<input type="text" class="form-control"
												placeholder="Tìm kiếm...">
											<button type="submit" class="btn btn-primary">Tìm
												kiếm</button>
										</div>
									</div></span>
							</a>
						</div>
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Họ và tên</th>
										<th>Địa chỉ</th>
										<th>Số điện thoại</th>
										<th>Email</th>
										<th>Tên sản phẩm</th>
										<th>Hình ảnh</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Thành tiền</th>
									</tr>
								</thead>
								<tbody>
									
									<tr>
        <td>Nguyễn Văn A</td>
        <td>123 Đường ABC, Quận XYZ, TP HCM</td>
        <td>0123456789</td>
        <td>h@gmail.com</td>
        <td>Áo thun</td>
        <td><img alt="" src="images/Layer 2_ct.png"></td>
        <td>100.000</td>
        <td>01</td>
        <td>100.000</td>
        
        
        
        <td> <a class="btn btn-danger btn-sm" href="/admin/management" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-circle" viewBox="0 0 16 16">
  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
</svg></a></td>
        </tr>
        <tr>
        <td>Nguyễn Văn A</td>
        <td>123 Đường ABC, Quận XYZ, TP HCM</td>
        <td>0123456789</td>
        <td>h@gmail.com</td>
        <td>Áo thun</td>
        <td><img alt="" src="images/Layer 2_ct.png"></td>
        <td>120.000</td>
        <td>01</td>
        <td>120.000</td>
        
        
        
        <td> <a class="btn btn-danger btn-sm" href="/admin/management" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-circle" viewBox="0 0 16 16">
  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
</svg></a></td>
        </tr>
        
        
								</tbody>
							</table>
						</div>


						<div class="row">
							<ul class="pagination justify-content-center">
								<c:forEach var="index" begin="0" end="${ data.totalPages - 1 }">
									<li class="page-item mx-1"><a
										class="page-link ${ index==page?'bg-black text-white':'' }"
										href="/admin/orders/index?page=${ index }">${ index + 1 }</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var option = {
			animation : true,
			delay : 5000
		}
		document.getElementById("liveToastBtn").onclick = function() {
			var myAlert = document.getElementById("liveToast");
			var bsAlert = new bootstrap.Toast(myAlert, option);
			bsAlert.show();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>