<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-md-2 col-sm-2">
			<div class="logo">
				<a href="/index"> <img src="${pageContext.request.contextPath}/images/shopteam5_logo.png"
					alt="shopteam5" width="100px"></a>
			</div>
		</div>
		<div class="col-md-10 col-sm-10">
			<div class="header_top">
				<div class="row">
					<!-- dangnhap -->
					<div class="col-sm-12">
						<ul class="usermenu">

<c:choose>
    <c:when test="${empty sessionScope.quanly and empty sessionScope.user}">
        <li><a href="/trangDangNhap" class="log">Đăng nhập</a></li>
        <li><a href="/trangDangKy" class="reg">Đăng kí</a></li>
    </c:when>
    <c:when test="${not empty sessionScope.quanly and empty sessionScope.user}">
        <li><a href="/admin/trangchuadmin" class="log">Tài khoản của tôi</a></li>
        <li><label style="color: white">| &nbsp;&nbsp;&nbsp; ID: ${sessionScope.username}</label></li>
    </c:when>
    <c:otherwise>
        <li><a href="/trangchuauser" class="log">Tài khoản của tôi</a></li>
        <li><label style="color: white">| &nbsp;&nbsp;&nbsp; ID: ${sessionScope.user}</label></li>
    </c:otherwise>
</c:choose>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="header_bottom">
				<ul class="option">
					<li id="search" class="search">
						<form>
<!-- 							<input type="text" class="form-control" placeholder="Search"> -->
						</form>
					</li>
					<c:choose>
								<c:when test="${empty sessionScope.user}">
								</c:when>
								<c:otherwise>

							<li class="option-cart"><a href="/cart_products"
								class="cart-icon">cart </a></li>
						</c:otherwise>
							</c:choose>
					

				</ul>
				<div class="navbar-collapse collapse">

					<ul class="nav navbar-nav">
						<li class="active dropdown"><a href="/index"
							class="dropdown-toggle" data-toggle="dropdown">Trang Chủ</a></li>
						<!-- <li><a href="productgird.html">Nam</a></li> -->
						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown">Nam</a>
							<div class="dropdown-menu mega-menu">
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<ul class="mega-menu-links">
											<li><a href="${pageContext.request.contextPath}/formaonam">Tất cả áo</a></li>
											<li><a href="${pageContext.request.contextPath}/aothunnam">Áo thun nam</a></li>
											<li><a href="${pageContext.request.contextPath}/aopolonam">Áo Polo</a></li>
											<li><a href="/aosominam">Áo sơ mi</a></li>
											<li><a href="/aolennam">Áo len</a></li>
											<li><a href="/aohoodienam">Áo Hoodie</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown">Nữ</a>
							<div class="dropdown-menu mega-menu">
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<ul class="mega-menu-links">
											<li><a href="/formaonu">Tất cả áo</a></li>
											<li><a href="/aothunu">Áo thun nữ</a></li>
											<li><a href="/aosominu">Áo sơ mi</a></li>
											<li><a href="/aobra">Áo Bra</a></li>
											<li><a href="/aolennu">Áo len</a></li>
											<li><a href="/aohoodienu">Áo Hoodie</a></li>

										</ul>
									</div>
								</div>
							</div></li>
						

					</ul>

				</div>

			</div>

		</div>
	</div>
</div>
