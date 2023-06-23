<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Đổi mật khẩu</title>
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
			<div class="top">

				<header>Đổi mật khẩu</header>
				
			</div>
			<div style="background-color: green;opacity: 0.25; text-align: center; border-radius: 5px 5px;" class="input-field">
				<label style="color: white;">${message}</label>
			</div>
			<br>
			<form action="/dmk" method="post">
			<div class="input-field">
				<input type="text" class="input" name="username" placeholder="Tài khoản" id="" />
				<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="password" name="password" class="input" placeholder="Mật khẩu cũ" id="" />
				<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="Password" name="passwordm" pattern="^(?=.*[A-Z])(?=.*\d).{8,}$" title="Ít nhất một chữ in hoa, có cả số và đồng thời đảm bảo ít nhất mật khẩu có 8 ký tự" class="input" placeholder="Mật khẩu mới"
					id="" /> <i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="Password" name="passwordm1" pattern="^(?=.*[A-Z])(?=.*\d).{8,}$" title="Ít nhất một chữ in hoa, có cả số và đồng thời đảm bảo ít nhất mật khẩu có 8 ký tự" class="input"
					placeholder="Xác nhận mật khẩu mới" id="" /> <i
					class="bx bx-lock-alt"></i>
			</div>

			<div class="input-field">
				<input type="submit" class="submit" value="Đổi mật khẩu" id="" />
			</div>
			<div class="two-col"></div>
		</div>
		</form>
	</div>
</body>
</html>