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

<title>Order</title>
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
						<!-- <a class="navbar-brand" href="#">Navbar w/ text</a> -->
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
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
									<span> Welcome <sec:authentication
											property="principal.username" />
									</span>
								</sec:authorize> <i class="fa-solid fa-user fs-4"></i>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dropAccount"
								style="left: auto; right: 10px">
								<li><a class="dropdown-item" href="/home">Home</a></li>
								<li><a class="dropdown-item" href="/logout">Log out</a></li>
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
										<th>Mã hóa đơn</th>
										<th>Tổng tiền</th>
										<th>Trạng thái</th>
										<th>Ngày đặt</th>
										

										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>100.000</td>
										<td>Đang duyệt</td>
										<td>01/01/2023</td>
										<td>
											<!-- Example single danger button -->
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-bs-toggle="dropdown" aria-expanded="false">
													Cập nhật trạng thái</button>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="#">Xét duyệt</a></li>
													<li><a class="dropdown-item" href="#">Đã xét duyệt</a></li>
													<li><a class="dropdown-item" href="#">Đã giao hàng</a></li>

												</ul>
											</div> <a class="btn btn-primary btn-sm"
											href="/admin/infoManagement" role="button"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-info-circle"
													viewBox="0 0 16 16">
  <path
														d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  <path
														d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
</svg></a>
										</td>
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