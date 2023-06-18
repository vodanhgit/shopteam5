<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- 	<%@ taglib prefix="sec" --%>
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
					<h2>Thống kê</h2>

					<ul class="nav nav-tabs" id="myTabContent" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="topProductsTab"
								data-bs-toggle="tab" data-bs-target="#topProducts" type="button"
								role="tab" aria-controls="topProducts" aria-selected="true">Top
								sản phẩm bán chạy</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="productCategoriesTab"
								data-bs-toggle="tab" data-bs-target="#productCategories"
								type="button" role="tab" aria-controls="productCategories"
								aria-selected="false">Doanh thu</button>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="topProducts"
							role="tabpanel" aria-labelledby="topProductsTab">
							<div class="tab-content" id="myTabContent">

								<div class="tab-pane fade show active" id="topProducts"
									role="tabpanel" aria-labelledby="topProductsTab">
									<!-- <div style="text-align: center; margin-top: 2%">
										Chọn ngày: <input type="date"></input> &nbsp;
										<button type="button" class="btn-primary">Thống kê</button>
									</div> -->
									<div class="table-responsive mt-3" style="overflow-x: auto">

										<table class="table table-bordered">
											<thead>
												<tr>
													<th>STT</th>
													<th>Mã Sản Phẩm</th>
													<th>Tên Sản Phẩm</th>
													<th>Loại Sản Phẩm</th>
													<th>Số Lượng Bán</th>
													<th>Tổng tiền</th>

												</tr>
											</thead>
											<tbody>

												<c:forEach var="product" items="${topProducts}"
													varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td>${product[3]}</td>
														<td>${product[2]}</td>
														<td>${product[0]}</td>
														<td>${product[1]}</td>
														<td>${product[4]}</td>
														
													</tr>
												</c:forEach>

											</tbody>
										</table>
										<%-- <label>Doanh thu: ${doanhThu}</label> --%>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="productCategories" role="tabpanel"
							aria-labelledby="productCategoriesTab">

							<div style="text-align: center; margin-top: 2%">
								Chọn ngày: <input type="date"></input> &nbsp;
								<button type="button" class="btn-primary">Thống kê</button>
							</div>
							<div class="container">
								<div class="row">
									<div class="col-sm-8">
										<div class="table-responsive mt-3" style="overflow-x: auto">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>STT</th>
														<th>Mã Sản Phẩm</th>
														<th>Tên Sản phẩm</th>
														<th>Số lượng bán</th>
														<th>Ngày đặt</th>

														<th>Doanh thu</th>

													</tr>
												</thead>
												<tbody>

													<tr>
														<td>01</td>
														<td>01</td>
														<td>Áo Thun</td>
														<td>100</td>
														<td>-2-22-2</td>
														<td>20.000.000 VND</td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>
									<div class="col-sm-4" style="margin-top: 10px">
										<div>
											<label>Doanh Thu: </label>

										</div>
									</div>
								</div>
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