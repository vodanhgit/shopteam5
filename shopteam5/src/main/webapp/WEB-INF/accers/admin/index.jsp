<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 	<%@ taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="/public/images/logo-ico.svg" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>ShopTeam 5 Admin</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">
				<div class="d-flex justify-content-center">
					<a class="navbar-brand" href="#"> <img alt="logo"
						src="/public/images/logo-ico.svg" width="100"
						height="100">
					</a>
				</div>
				<hr>
				<div class="list-group">
					<p class="text-secondary fw-bold">Danh sách</p>
					<a href="#" class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gauge-high fs-6 px-1"></i></span>Trang chủ
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-user fs-6 px-1"></i></span> Quản lý tài khoản
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-cart-shopping fs-6 px-1"></i></span> Quản lý sản phẩm
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-share-nodes fs-6 px-1"></i></span> Quản lý loại SP
					</a>  <a href="#"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-truck-fast fs-6 px-1"></i></span> Đặt hàng
					</a> 
					<p class="text-secondary fw-bold">Bổ sung</p>
					<a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-message fs-6 px-1"></i></span> Phản hồi
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gear fs-6 px-1"></i></span> Cài đặt
					</a>
				</div>
			</div>
			
			<div class="col-10 px-0">
				<nav class="navbar navbar-expand-lg shadow-sm"
					style="background-color: #ffffff">
					<div class="container-fluid">
						<a class="navbar-brand" href="#">Navbar</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/home">Trang chủ</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Tài khoản</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">QL đơn hàng</a>
								</li>
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
				<div class="row m-0 p-5 g-3">
					<div class="col-3">
						<div class="card bg-info rounded">
							<div class="card-header text-white">
								Total account
							</div>
							<div class="card-body">
								<p class="text-white">999</p>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card bg-primary rounded">
							<div class="card-header text-white">
								Total product
							</div>
							<div class="card-body">
								<p class="text-white">9999</p>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card bg-success rounded">
							<div class="card-header text-white">
								Total order
							</div>
							<div class="card-body">
								<p class="text-white">999</p>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card bg-danger rounded">
							<div class="card-header text-white">
								Total payment
							</div>
							<div class="card-body">
								<p class="text-white">99999</p>
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