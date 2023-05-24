<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="css-danhSachDatHang.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Trang Chinh</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />
	<link href="..assets/css/index.css">
</head>
<style>
body{
	-ms-overflow-style: none; /* khai báo sử dụng Internet Explorer, Edge */
    scrollbar-width: none; /* sử dụng Firefox */
    overflow-y: scroll; 
}
body::-webkit-scrollbar { 
  display: none; 
}	
@media (max-width: 320px) {
    .fancybox-navigation {
        padding:0!important
    }
	.raffile-page .image-cover {
        height: auto
    }    
}
</style>
<body class="container-fluid col-xl-12 col-sm-12" style="padding-left: 0; padding-right: 0; position: relative;">


<nav class="navbar navbar-expand-lg navbar-light" style="position: absolute; background-color: white; right: 0px; border-radius: 10px 10px; opacity: 0.8;">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Shopteam5</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menuindex" aria-controls="menuindex" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="menuindex">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Sản phẩm</a>
        <a class="nav-link" href="#">Đăng ký</a>
        <a class="nav-link" href="#" tabindex="-1" style="background-color: #E0E0E0; border-radius: 10px 10px">Đăng nhập</a>
      </div>
    </div>
  </div>
</nav>
<a href=""><img src="/img/logoShopTeam5.png" alt="logoShopTeam5" style="position: absolute; margin-top: 3%; width: 300px; left: 4%"/></a>
<ul class="list-group list-group-flush col-lg-2" style="left: 5%; position: absolute; margin-top: 10%;">
<!--   <li class="list-group-item disabled" aria-disabled="true">Giới Thiệu</li> -->
  <a class="list-group-item" href="#" style="color: black; font-weight: bold; font-style: italic; border: none;">Giới Thiệu</a>
  <a class="list-group-item" href="#" style="color: black; font-weight: bold; font-style: italic; border: none;">A third item</a>
  <a class="list-group-item" href="#" style="color: black; font-weight: bold; font-style: italic; border: none;">A fourth item</a>
  <a class="list-group-item" href="#" style="color: black; font-weight: bold; font-style: italic; border: none;">And a fifth one</a>
</ul>
<div style= "position: absolute; margin-top: 43%; width: 1000px; height: 100px; right: 0px; color: white; font-family: cursive; font-size: 1.5em;">
<marquee>
Welcome to digital retail store
</marquee>
</div>

		<a href="#"><img src="/img/trangchinh.jpg" alt="trangchinh" style="width: 100%; height: 712.6px;"/></a>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>