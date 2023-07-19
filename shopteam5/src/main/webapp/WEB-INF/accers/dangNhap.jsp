<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>Đăng Nhập</title>

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
			<div style="background-color: green;opacity: 0.25; text-align: center; border-radius: 5px 5px;" class="input-field">
				<label style="color: white;">${message}</label>
			</div>
			
				<a href="/trangDangKy" class="dangky">Bạn chưa có tài
					khoản?</a>
				<header>Đăng nhập</header>
			</div>
			<br>
			<form action="/login" method="post" enctype="multipart/form-data">
			
			<div class="input-field">
				<input type="text" name="username" class="input" placeholder="Tên đăng nhập" />
				<i class="bx bx-user"></i>
			</div>
			<div class="input-field">
				<input type="Password" name="password" class="input" placeholder="Mật khẩu" />
				<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="submit" class="submit" value="Đăng nhập"/>
			</div>
			<div class="two-col">
				<div class="one">
					<input type="checkbox" name="remember" value="true"/> <label for="check">
						Nhớ tài khoản</label>
				</div>
				<div class="two">
					<label><a href="/trangQuenMatKhau">Quên mật khẩu?</a></label>
				</div>
			</div>
			
			</form>
		</div>
	</div>
</body>
</html>