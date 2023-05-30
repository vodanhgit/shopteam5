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
<title>Index</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">
				<div class="d-flex justify-content-center">
					<a class="navbar-brand" href="index"> <img alt="logo" s
						src="images/shopteam5_logo.png" width="100" height="100">
					</a>
				</div>
				<hr>
				<div class="list-group">
					<p class="text-secondary fw-bold">Danh sách</p>
					<a href="index"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gauge-high fs-6 px-1"></i></span>Trang chủ
					</a> <a href="account"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-user fs-6 px-1"></i></span> Quản lý tài khoản
					</a> <a href="product"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-cart-shopping fs-6 px-1"></i></span> Quản lý sản phẩm
					</a> <a href="categori"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-share-nodes fs-6 px-1"></i></span> Quản lý loại SP
					</a> <a href="oder"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-truck-fast fs-6 px-1"></i></span> Đặt hàng
					</a> </a> <a href="#"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa fa-line-chart fs-6 px-1"></i></span> Thống kê
					</a>

				</div>
			</div>

			<div class="col-10 px-0">
				<nav class="navbar navbar-expand-lg shadow-sm"
					style="background-color: #ffffff">
					<div class="container-fluid">

						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
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

				<div class="px-4 p-3">
					<div class="row">
						<h4>Hồ sơ của tôi</h4>
						<hr>
						<div class="col-lg-9 ">
							<div class="px-5 p-5 border border border-black border border-4 ">
								<div class="form-group">
									<label class="me-3">Tên đăng nhập: </label> <label>Baovhg</label>
								</div>
								<div class=" mt-3">
									<label>Tên</label> <input type="text" class="form-control">
								</div>
								<div class="form-group mt-3">
									<label class="me-3">Email:</label> <label>Baovhgpc03549@gmail.com</label>
									<a href="#">Thay đổi</a>
								</div>
								<div class="form-group mt-3">
									<label class="me-3">Số điện thoại:</label> <label>0357100604</label>
									<a href="#">Thay đổi</a>
								</div>
								<div class="form-group mt-3">
									<label class="me-3">Giới tính:</label> <input type="radio"
										id="contactChoice1" name="contact" value="email" /> <label
										for="contactChoice1" class="me-3">Nam</label> <input
										type="radio" id="contactChoice2" name="contact" value="phone" />
									<label for="contactChoice2" class="me-3">Nữ</label> <input
										type="radio" id="contactChoice3" name="contact" value="mail" />
									<label for="contactChoice3">Khác</label>
								</div>
								<div class="form-group mt-3">
									<label class="me-3">Ngày sinh:</label> 
									<select id="pet-select">
										<option value="">Ngày</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
									</select>
									 <select id="pet-select">
										<option value="">Tháng</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
									<select id="pet-select">
										<option value="">Năm</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										
									</select>
								</div>

								<div class="form-group mt-3">
									
									<a class="btn btn-danger" href="#" role="button">Lưu</a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 ">
						<div class="px-5 p-5 border border border-black border border-4 ">
						<div class="text-center">
						<img src="/src/main/webapp/images/mem.png" class="class="rounded-circle"" width="50" height="50" />
						</div>
						<div class="text-center mt-2" >
						<button>Thay đổi</button>
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