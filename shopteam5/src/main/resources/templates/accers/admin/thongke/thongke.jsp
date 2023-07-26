<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
								<h2>Thống kê</h2>
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

					<ul class="nav nav-tabs" id="myTabContent" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="topProductsTab"
								data-bs-toggle="tab" data-bs-target="#topProducts" type="button"
								role="tab" aria-controls="topProducts" aria-selected="true">Doanh thu (Ngày/Tháng/Năm)</button>
						</li>

					</ul>
						<form action="/admin/thongkedoanhthu" method="post">
					<div class="tab-content" id="myTabContent">
						<div style="text-align: center; margin-top: 2%">
							
								Từ ngày: <input type="date" name="tungay" value="${param.tungay}"></input> &nbsp;
								Đến ngày: <input type="date" name="denngay" value="${param.denngay}"></input> &nbsp;
								Trạng thái: <select name="trangthai">
										<option>${chontrangthai}</option>
										<option>Chờ xét duyệt</option>
										<option>Đã xét duyệt</option>
										<option>Xét duyệt thất bại</option>
										<option>Đang giao hàng</option>
										<option>Đã giao hàng</option>
								</select> &nbsp;
								<button type="submit" class="btn-primary">Thống kê</button>
								
							</div>
							<div class="container">
								<div class="row">
									<div class="col-sm-6">
									
										<div class="table-responsive mt-3" style="max-height: 450px;overflow: auto;">
											<table class="table table-bordered">
												<thead >
													<tr>
														<th>Mã hóa đơn</th>
														<th>Số lượng sản phẩm</th>
														<th>Ngày</th>
														<th>Tổng tiền</th>
														<th>Trạng thái</th>

													</tr>
												</thead>
												<tbody>
												<c:forEach items="${hoaDonDTOList}" var="hoaDonDTO">
													<tr>
													 
														<td>${hoaDonDTO.hoaDon.maHoaDon}</td>
                										<td>${hoaDonDTO.soLuong}</td>
														<td>${hoaDonDTO.hoaDon.ngayDatHang}</td>
														<td>${hoaDonDTO.hoaDon.tongTien}</td>
														<td>${hoaDonDTO.hoaDon.trangThai}</td>
													
														
													</tr>
												</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									
									<div class="col-sm-6">
									<center><h4>Tổng kết</h4> </center>	
										<div class="table-responsive mt-2" style="overflow-x: auto">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Số hóa đơn</th>
														<th>Số lượng sản phẩm</th>
														<th>Tổng tiền</th>

													</tr>
												</thead>
												<tbody>

													<tr>
														<td>${sohoadon}</td>
														<td>${tongsoluongsanpham}</td>
														<td>${tongtien}</td>
												
													</tr>

												</tbody>
											</table>
										</div>
										
										<label>Ngày có doanh thu cao nhất: ${ngaydoanhthucaonhat}</label> | 
										<label>Tổng tiền: ${ tongtiendoanhthucaonhat}</label>
										<hr>
										<center><h4>So sánh</h4> </center>
										<div class="table-responsive mt-3" style="overflow-x: auto">
										<center>
											Từ ngày: <input type="date" name="tungay_sosanh" value="${param.tungay_sosanh}"></input> &nbsp;
								Đến ngày: <input type="date" name="denngay_sosanh" value="${param.denngay_sosanh}"></input> &nbsp;<br>
								<br>Trạng thái: <select name="trangthai_sosanh">
										<option>${chontrangthai_sosanh}</option>
										<option>Chờ xét duyệt</option>
										<option>Đã xét duyệt</option>
										<option>Xét duyệt thất bại</option>
										<option>Đang giao hàng</option>
										<option>Đã giao hàng</option>
								</select>
<!-- 											<button type="button" class="btn-primary">Thống kê</button> -->
										</center>
										</div>
										
										
										<div class="table-responsive mt-3" style="overflow-x: auto">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Số hóa đơn</th>
														<th>Số lượng sản phẩm</th>
														<th>Tổng tiền</th>

													</tr>
												</thead>
												<tbody>

													<tr>
														<td>${sohoadon_sosanh}</td>
														<td>${tongsoluongsanpham_sosanh}</td>
														<td>${tongtien_sosanh}</td>
												
													</tr>

												</tbody>
											</table>
										</div>
										<br>
<%-- 										<label>Doanh thu: ${tanggiamdoanhthu}</label> &nbsp;&nbsp;|&nbsp;&nbsp; --%>
<%-- 										<label>Số lượng: ${tanggiamsanpham}</label>  --%>
										<label>Ngày có doanh thu cao nhất: ${ngaydoanhthucaonhat_sosanh}</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Tổng doanh thu của ngày cao nhất: ${tongtiendoanhthucaonhat_sosanh}</label>
									</div>
									
									
								</div>
							</div>
					</div>
			</form>
						
					</div>
				</div>



			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>