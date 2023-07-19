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
		<form action="/xacnhanma/${email}" method="post">
			<div class="top">
				<header>Quên mật khẩu</header>
			</div>
			<br>
			<div class="input-field" style="background-color: #DDDDDD;">
				<label>Mã email đã được gửi qua ${email} , Bạn không nhận được mã? </label>
				<input value="${email}" type="hidden">
				<a href="/sendemail/${email}">Gửi lại</a>
			</div>
			<br>
			<br>
			<div class="input-field">
				<input type="text" class="input" placeholder="Nhập mã xác nhận" id="" name="maxacnhan"  value="${param.maxacnhan}"/> <i
					class="bx bxl-gmail"></i><br>
					<center><label style="color: red; font-size: 10px">${kiemtramaxacnhan}</label></center>
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