<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<body>
	<div class="d-flex justify-content-center">
		<a class="navbar-brand" href="/index"> <img alt="logo" s
			src="/images/shopteam5_logo.png" width="100" height="100">
		</a>
	</div>
	<hr>
	<div class="list-group">
					<p class="text-secondary fw-bold">Danh sách</p>
					<a href="trangchuadmin"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gauge-high fs-6 px-1"></i></span>Trang chủ
					</a> 
					<c:choose>
								<c:when test="${empty sessionScope.username}">
								<a href="account"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1;"> <span><i
							class="fa-solid fa-user fs-6 px-1"></i></span> Quản lý tài khoản
					</a> 
					<a href="product"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-cart-shopping fs-6 px-1"></i></span> Quản lý sản phẩm
							</a>
							<a href="thongke"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa fa-line-chart fs-6 px-1"></i></span> Thống kê
					</a>
								</c:when>
								<c:otherwise>

							
						</c:otherwise>
							</c:choose>
					
					
					<!-- </a> <a href="categori"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-share-nodes fs-6 px-1"></i></span> Quản lý loại SP -->
					<!-- </a> <a href="oder"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-truck-fast fs-6 px-1"></i></span> Đặt hàng
					</a> -->
					<a href="management"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-brands fa-wpforms fs-6 px-1"></i></span> Quản lý đơn hàng
					</a> 

				</div>

</body>