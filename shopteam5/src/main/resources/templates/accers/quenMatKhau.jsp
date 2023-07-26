<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Quên mật khẩu</title>
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />
<%@include file="css-style.jsp"%>
</head>
<body>
	<div class="de">
		<a href="index.html"> <img class="logo"
			src="/images/logoShopTeam5.png" alt=""></a>
		</ul>
	</div>
	<hr width="1500px">
	<div class="box">
		<div class="container">
		<form action="/kiemtraemail" method="post">
			<div class="top">
				<a href="/trangDangNhap" class="dangky">Đăng nhập</a>
				<header>Quên mật khẩu</header>
			</div>
			<br>

			<div class="input-field">
				<input type="email" class="input" placeholder="Email" id="" name="email" value="${param.email}"/> <i
					class="bx bxl-gmail"></i><br>
					<center><label style="color: red; font-size: 10px">${kiemtramail}</label></center>
			</div>
			<br>
			<div class="input-field">
				<button class="submit" type="submit"> Xác nhận</button>
			</div>
			<div class="two-col"></div>
		</form>
		</div>
	</div>
</body>
</html>