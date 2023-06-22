<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/shopteam5_logo.png">
<title>ShopTeam 5</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/sequence-looptheme.css" rel="stylesheet" media="all" />

<link href="css/style.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<%@include file="/WEB-INF/accers/menu.jsp"%>
		</div>

	</div>
	<div class="container">
		<div class="row">
			<h4>Hồ sơ của tôi</h4>
			<hr>
			<div class="col-lg-8" style="font-size: 15px">
				<div class="border border border-black border border-4 ">
					<div class="form-group">
						<label style="width: 15%; font-weight: bold;">Tên đăng nhập: </label> <label>${thongtintaikhoan.tenTaiKhoan}</label>
					</div>
					<div class="mt-3">
						<div class="form-group mt-3">
							<label style="width: 15%; font-weight: bold;">Họ và Tên:</label> <label>${thongtintaikhoan.hoTenNguoiDung}</label>
							<a href="#">Thay đổi</a>
						</div>
					</div>
					<div class="form-group mt-3">
						<label style="width: 15%; font-weight: bold;">Email:</label> <label>${thongtintaikhoan.email}</label>
						<a href="#">Thay đổi</a>
					</div>
					<div class="form-group mt-3">
						<label style="width: 15%; font-weight: bold;">Số điện thoại:</label> <label>${thongtintaikhoan.soDienThoai}</label>
						<a href="#">Thay đổi</a>
					</div>
					<div class="form-group mt-3">
						<label style="width: 15%; font-weight: bold;">Giới tính:</label> <input type="radio"
							${thongtintaikhoan.gioiTinh? 'checked':''}
							value="${thongtintaikhoan.gioiTinh?' true':'false' }"
							id="contactChoice1" name="contact"
							value="${thongtintaikhoan.gioiTinh}" /> <label
							for="contactChoice1" class="me-3">Nam</label> <input
							${thongtintaikhoan.gioiTinh? 'checked':''} type="radio"
							id="contactChoice2" name="contact"
							value="${thongtintaikhoan.gioiTinh?' true':'false' }" /> <label
							for="contactChoice2" class="me-3">Nữ</label> <input type="radio"
							id="contactChoice3" name="contact" /> <label
							for="contactChoice3">Khác</label>
					</div>
					<div class="form-group mt-3">
						<label style="width: 15%; font-weight: bold;">Ngày sinh:</label> <input type="date"
							value="${thongtintaikhoan.ngaySinh}">
					</div>
					<div class="form-group mt-3">
						<label style="width: 15%; font-weight: bold;">Hình Ảnh</label> 
						<img src="/images/${thongtintaikhoan.hinhAnh}" width="50px">
					</div>
					<div class="form-group mt-3">
						<a class="btn btn-danger" href="#" role="button">Chỉnh sửa</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
			

			</div>
		</div>
	</div>













	<div class="clearfix"></div>
	<div class="container_fullwidth">
		<div class="container"></div>








		<div class="clearfix"></div>
		<div class="footer">
			<div class="footer">
				<div class="footer-info">
					<div class="container">
						<div class="row">
							<div class="col-md-3">
								<div class="footer-logo">
									<img src="images/shopteam5_logo.png" alt="shopteam5"
										width="100px">
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<h4 class="title">
									Thông tin <strong>liên lạc</strong>
								</h4>
								<p>Toà nhà FPT Polytechnic, đường số 22, phường Thường
									Thạnh, quận Cái Răng, TP Cần Thơ.</p>
								<p>Gọi: 098 388 1100</p>
								<p>Email : caodang@fpt.edu.vn</p>
							</div>
							<div class="col-md-3 col-sm-6">
								<h4 class="title">
									Hỗ trợ <strong> Khách hàng</strong>
								</h4>
								<ul class="support">
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Payment Option</a></li>
									<li><a href="#">Booking Tips</a></li>
									<li><a href="#">Infomation</a></li>
								</ul>
							</div>
							<div class="col-md-3">
								<h4 class="title">
									Liên hệ <strong>Chúng tôi </strong>
								</h4>

								<form class="newsletter">
									<input type="text" name="" placeholder="Nhập email của bạn....">
									<input type="submit" value="Gửi" class="button">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright-info">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								Copyright © 2023. Designed by <a href="#">ShopTeam5</a>. All
								rights reseved
							</p>
						</div>
						<div class="col-md-6">
							<ul class="social-icon">
								<li><a href="#" class="linkedin"></a></li>
								<li><a href="#" class="google-plus"></a></li>
								<li><a href="#" class="twitter"></a></li>
								<li><a href="#" class="facebook"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.10.2.min.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>
	<script defer src="js/jquery.flexslider.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.sequence-min.js">
		
	</script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js">
		
	</script>
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>
</html>