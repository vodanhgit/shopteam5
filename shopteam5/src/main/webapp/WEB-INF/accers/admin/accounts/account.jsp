<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
<%-- <%@ taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/images/shopteam5_logo.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Shopteam5</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">

				<%@include file="/WEB-INF/accers/admin/menuTaiKhoan.jsp"%>
			</div>

			<div class="col-10 px-0">
				<nav class="navbar navbar-expand-lg shadow-sm"
					style="background-color: #ffffff">
					<div class="container-fluid">

						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">

							</ul>
							<span class="navbar-text" id="dropAccount" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <!-- 									<sec:authorize access="isAuthenticated()"> -->
								<span> Xin chào <!--<sec:authentication property="principal.username" /> -->
							</span> <!-- 									</sec:authorize> --> <i
								class="fa-solid fa-user fs-4"></i>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dropAccount"
								style="left: auto; right: 10px">
								<li><a class="dropdown-item" href="/home">Trang chủ</a></li>
								<li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="px-4 p-3">
					<div class="row">
						<div class="col-3">
							<button class="btn btn-info text-white" data-bs-toggle="modal"
								data-bs-target="#modalAdd">Thêm mới tài khoản</button>
							<!-- Modal add -->
							<div class="modal fade" id="modalAdd" data-bs-backdrop="static"
								data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Thêm
												mới tài khoản</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form:form action="/admin/accounts/store" method="post"
												modelAttribute="account" name="account_form">
												<div>
													<label for="name">Họ tên</label> <input type="text"
														class="form-control" id="name" name="name" />

												</div>
												<div>
													<label for="email">Email</label> <input type="email"
														class="form-control" id="email" name="email" />
												</div>
												<div>
													<label for="username">Tên đăng nhập</label> <input
														type="text" class="form-control" id="username"
														name="username" />
												</div>
												<div>
													<label for="pass">Mật khẩu</label> <input type="text"
														class="form-control" id="pass" name="password" />
												</div>
												<div>
													<label for="hinhanh">Hình ảnh</label> <input type="file"
														class="form-control" id="hinhanh" name="image" />
												</div>
												<div>
													<label>Admin</label> <select class="form-control">
														<option value="admin">Quản lý</option>
														<option value="member">Thành viên</option>
													</select>
												</div>
												<button class="btn btn-primary w-100 mt-3" id="liveToastBtn"
													type="submit">Thêm</button>
												<div class="position-fixed top-0 end-0 p-5"
													style="z-index: 11">
													<div style="background-color: #2ecc71" id="liveToast"
														class="toast align-items-center text-white border-0"
														role="alert" aria-live="assertive" aria-atomic="true">
														<div class="d-flex">
															<div class="toast-body">Thêm thành công !</div>
															<button type="button"
																class="btn-close btn-close-white me-2 m-auto"
																data-bs-dismiss="toast" aria-label="Close"></button>
														</div>
													</div>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Mã tài khoản</th>
										<th>Họ và Tên</th>
										<th>Tên tài khoản</th>
										<th>Email</th>
										<th>Hình ảnh</th>
										<th>Quyền</th>
										<th colspan="2">Action</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>NV1</td>
										<td>Nguyen Van A</td>
										<td>nva123</td>
										<td>NVA@gmail.com</td>
										<td class="text-center"><img src="/images/anhmeo.jpg"
											width="50" height="50" /></td>
										<td>Quản lý</td>

										<td class="text-center">
											<button class="btn btn-primary" data-bs-toggle="modal"
												data-bs-target="#modalUpdate_${acc.id }">
												<i class="fa-solid fa-pen-to-square"></i>
											</button>
										</td>
										<!-- Modal update -->
										<div class="modal fade" id="modalUpdate_${acc.id}"
											data-bs-backdrop="static" data-bs-keyboard="false"
											tabindex="-1" aria-labelledby="staticBackdropLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header bg-info">
														<h5 class="modal-title text-white"
															id="staticBackdropLabel">Cập nhập tài khoản</h5>
														<button type="button" class="btn" data-bs-dismiss="modal"
															aria-label="Close">
															<i class="fa-solid fa-xmark fs-5 text-white"></i>
														</button>
													</div>
													<div class="modal-body">
														<form:form action="/admin/accounts/store" method="post"
															modelAttribute="account" name="account_form">
															<div>
																<label for="name">Họ tên</label> <input type="text"
																	class="form-control" id="name" name="name" />

															</div>
															<div>
																<label for="email">Email</label> <input type="email"
																	class="form-control" id="email" name="email" />

															</div>
															<div>
																<label for="username">Tên đăng nhập</label> <input
																	type="text" class="form-control" id="username"
																	name="username" />

															</div>
															<div>
																<label for="pass">Mật khẩu</label> <input type="text"
																	class="form-control" id="pass" name="password" />

															</div>
															<div>
																<label for="hinhanh">Hình ảnh</label> <input type="file"
																	class="form-control" id="hinhanh" name="image" />
															</div>
															<div>
																<label>Admin</label> <select class="form-control">
																	<option value="admin">Quản lý</option>
																	<option value="member">Thành viên</option>
																</select>
															</div>
															<button class="btn btn-primary w-100 mt-3"
																id="liveToastBtn" type="submit">Cập nhập</button>
															<div class="position-fixed top-0 end-0 p-5"
																style="z-index: 11">
																<!-- 													thông báo cập nhập -->
																<!-- 													<div style="background-color: #2ecc71" id="liveToast" -->
																<!-- 														class="toast align-items-center text-white border-0" -->
																<!-- 														role="alert" aria-live="assertive" aria-atomic="true"> -->
																<!-- 														<div class="d-flex"> -->
																<!-- 															<div class="toast-body">Cập nhập thành công !</div> -->
																<!-- 															<button type="button" -->
																<!-- 																class="btn-close btn-close-white me-2 m-auto" -->
																<!-- 																data-bs-dismiss="toast" aria-label="Close"></button> -->
																<!-- 														</div> -->
																<!-- 													</div> -->
															</div>
														</form:form>
													</div>
												</div>
											</div>
										</div>
										<td class="text-center">
											<button class="btn btn-danger" data-bs-toggle="modal"
												data-bs-target="#modalDelte_${acc.id }">
												<i class="fa-solid fa-trash-can"></i>
											</button> <!-- Modal delete -->
											<div class="modal fade" id="modalDelte_${acc.id}"
												data-bs-backdrop="static" data-bs-keyboard="false"
												tabindex="-1" aria-labelledby="staticBackdropLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header bg-danger">
															<h5 class="modal-title text-white"
																id="staticBackdropLabel">Xóa tài khoản !</h5>
															<button type="button" class="btn" data-bs-dismiss="modal"
																aria-label="Close">
																<i class="fa-solid fa-xmark fs-5 text-white"></i>
															</button>
														</div>
														<div class="modal-body" style="background-color: #fff2df">
															<p>Cảnh báo: Bạn đang cố gắng xóa tài khoản này, Tài
																khoản sau khi xóa không thể khôi phục !</p>
															<a role="button"
																href="/admin/accounts/delete/${ acc.id }"
																class="btn btn-danger w-100 "> Xóa </a>
														</div>
													</div>
												</div>
											</div>
									</tr>

								</tbody>
							</table>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>