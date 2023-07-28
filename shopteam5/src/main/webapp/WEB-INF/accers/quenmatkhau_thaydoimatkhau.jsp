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
			<form action="/xacnhanthaydoimatkhau/${email}" method="post">
				<div class="top">
					<header>Đổi mật khẩu mới</header>
				</div>
				<br>
				<div class="input-field">
					<input type="text" class="input" placeholder="Email" id=""
						name="email" value="${email}" readonly="readonly"
						style="background-color: #DDDDDD" /> <i class="bx bxl-gmail"></i><br>
				</div>
				<div class="input-field">
					<input type="text" class="input" placeholder="Tên đăng nhập" id=""
						name="tendangnhap" value="${tendn}" required> <i
						class="bx bx-user"></i><br>
					<center>
						<label style="color: red; font-size: 10px">${thongbaothaydoimatkhau_tendangnhap}</label>
					</center>
				</div>
				<div class="input-field">
					<input type="password" class="input" placeholder="Mật khẩu" id=""
						name="matkhau" value="${matk}" required
						pattern="^(?=.*[A-Z])(?=.*\d).{8,}$"
						title="Ít nhất một chữ in hoa, có cả số và đồng thời đảm bảo ít nhất mật khẩu có 8 ký tự" />
					<i class="bx bx-lock-alt"></i><br>
					<%-- 					<center><label style="color: red; font-size: 10px">${kiemtramaxacnhan}</label></center> --%>
				</div>
				<div class="input-field">
					<input type="password" class="input"
						placeholder="Xác nhận mật khẩu" id="" name="xacnhanmatkhau"
						required /> <i class="bx bx-lock-alt"></i><br>
					<center>
						<label style="color: red; font-size: 10px">${thongbaothaydoimatkhau_matkhau}</label>
					</center>
				</div>
				<br>
				<div class="input-field">
					<button class="submit" type="submit">Đổi mật khẩu</button>
				</div>
				<div class="two-col"></div>
			</form>
		</div>
	</div>
</body>
</html>