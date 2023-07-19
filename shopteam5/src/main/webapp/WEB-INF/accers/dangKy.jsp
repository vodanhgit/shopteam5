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
		<div style="background-color: green;opacity: 0.25; text-align: center; border-radius: 5px 5px;" class="input-field">
				<label style="color: white;">${thongbaodangkythanhcong}</label>
			</div>
			<div class="top">
				<a href="/trangDangNhap" class="dangky">Đăng nhập</a>
				<header>Đăng ký</header>
			</div>
			
			<br>
			<form action="dangkytaikhoan" method="post">
			<div class="input-field">
				<input type="text" class="input" placeholder="Họ và Tên" name="hovaten" value="${param.hovaten}"/>
				<i class="bx bx-user"></i>
			</div>
			<div class="input-field">
				<input type="text" class="input" placeholder="Tên đăng nhập" name="tendangnhap" value="${param.tendangnhap}"/>
				<i class="bx bx-user"></i>
				<label style="color: red; font-size: 10px">${thongbaodangky_tentaikhoan}</label>
			</div>
			<div class="input-field">
				<input type="password" class="input" placeholder="Mật khẩu" id="" name="matkhau" pattern="^(?=.*[A-Z])(?=.*\d).{8,}$" title="Ít nhất một chữ in hoa, có cả số và đồng thời đảm bảo ít nhất mật khẩu có 8 ký tự" required value="${param.matkhau}"/>
				<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
				<input type="password" class="input" placeholder="Xác nhận mật khẩu"
					id="" name="xacnhanmatkhau"/> <i class="bx bx-lock-alt"></i>
					<label style="color: red; font-size: 10px">${thongbaodangky}</label>
			</div>
			<br>
			<div class="input-field">
				
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
<!-- 				<input type="submit" class="submit" value="Đăng ký" id="" /> -->
				<button class="submit" type="submit">Đăng ký</button>
			</div>
			<div class="two-col"></div>
			</form>
		</div>
	</div>
</body>
</html>