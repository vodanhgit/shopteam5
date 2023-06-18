<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Đăng Ký</title>

<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />
	

<%@include file="css-style.jsp"%>
</head>
<body>
	<div class="de">
		<a href="/index"> <img class="logo"
			src="/images/logoShopTeam5.png" alt=""></a>

		</ul>
	</div>
	<hr width="1500px">
	<div class="box">
		<div class="container">
			<div class="top">
				<a href="/trangDangNhap" class="dangky">Đăng nhập</a>
				<header>Đăng ký</header>
			</div>
			<br>
			<div class="input-field">
				<input type="text" class="input" placeholder="Tên đăng nhập" />
				<i class="bx bx-user"></i>
			</div>
			<div class="input-field">
				<input type="Password" class="input" placeholder="Mật khẩu" id="" />
				<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="Password" class="input" placeholder="Xác nhận mật khẩu"
					id="" /> <i class="bx bx-lock-alt"></i>
			</div>
<!-- 			<div class="input-field"> -->
<!-- 				<input type="email" class="input" placeholder="Email"/> <i -->
<!-- 					class="bx bxl-gmail"></i> -->
<!-- 				<div class="btn-toolbar"> -->
<!-- 					<div class="btn-group"> -->
<!-- 						<a href="">Gửi lại</a> -->
<!-- 						<button style="background-color: gray; border-radius: 10px 10px; color: white; height: 30px">Xác -->
<!-- 							nhận</button> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->



<!-- 			<div class="input-field"> -->
<!-- 				<div class="btn-group"> -->
<!-- 				<input type="email" class="input" placeholder="Email" id="" width="100px"/> <i -->
<!-- 					class="bx bxl-gmail"></i> -->
					
<!-- 				</div> -->
<!-- 			</div> -->


			<div class="input-field">
				<input type="submit" class="submit" value="Đăng ký" id="" />
			</div>
			<div class="two-col"></div>
		</div>
	</div>
</body>
</html>