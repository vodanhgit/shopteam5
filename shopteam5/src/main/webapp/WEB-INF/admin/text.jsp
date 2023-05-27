<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">

			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css"
				integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA=="
				crossorigin="anonymous" referrerpolicy="no-referrer" />
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
			<title>Quản lý người dùng</title>
			<style>
				a {
					text-decoration: none;
				}
			</style>
		</head>

		<body>
			<header>
				 
			</header>

			<div class="container" style="height: 100%;">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#tabs1">Chỉnh sửa người dùng </a>
					</li>
					<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#tabs2">Danh sách người dùng</a></li>
				</ul>
				<!-- Nội dung tab -->
				<div class="tab-content">
					<div id="tabs1" class="tab-pane active">
						<div class="card">
							<div class="card-body">
								 <form action="">
									<div class="container">
										<div class="row">
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="name" class="form-label fw-bold">Tên đăng nhập</label> <input
														type="text" class="form-control" id="name" name="name"
														required>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="name" class="form-label fw-bold">Mật khẩu</label> <input
														type="text" class="form-control" id="name" name="name"
														required>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="name" class="form-label fw-bold">Họ tên</label> <input
														type="text" class="form-control" id="name" name="name"
														required>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="name" class="form-label fw-bold">Địa chỉ Email</label> <input
														type="text" class="form-control" id="name" name="name"
														required>
												</div>
											</div>
										</div>
									</div>
								 </form>
							</div>
							<div class="card-footer">
								<button class="btn btn-primary mx-1">
									 Chỉnh sửa 
								</button>
								<!-- Nút << -->
								<button class="btn btn-primary mx-1">
									 Xóa 
								</button>
							</div>
						</div>
						
					</div>
					<!--  -->
					<div id="tabs2" class="tab-pane">
						<div class="card">
							<div class="card-body">
								<table class="table table-hover table-bordered">
									<thead>
										<tr>
											<th>Tên đăng nhập</th>
											<th>Mật khẩu</th>
											<th>Họ tên</th>
											<th>Địa chỉ Email</th>
											<th>Quyền</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>TeoNV</td>
											<td>123456</td>
											<td>Nguyen Van Teo</td>
											<td>TeoNV@gmail.com</td>
											<td>Admin</td>
											<td><a href="#">Edit</a></td>
										</tr>
										<tr>
											<td>TeoNV</td>
											<td>123456</td>
											<td>Nguyen Van Teo</td>
											<td>TeoNV@gmail.com</td>
											<td>Admin</td>
											<td><a href="#">Chỉnh sửa</a></td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="card-footer">
								<div class="row">
									<div class="col-lg-3">
										<p class="p-2">2 Tài khoản</p>
									</div>
									<div class="col-lg-3"></div>
									<div class="col-lg-3"></div>
									<div class="col-lg-3">
										<button class="btn btn-primary mx-1">
											<i class="bi bi-chevron-bar-left"></i>
										</button>
										<!-- Nút << -->
										<button class="btn btn-primary mx-1">
											<i class="bi bi-chevron-double-left"></i>
										</button>

										<!-- Nút >> -->
										<button class="btn btn-primary mx-1">
											<i class="bi bi-chevron-double-right"></i>
										</button>

										<!-- Nút >| -->
										<button class="btn btn-primary mx-1">
											<i class="bi bi-chevron-bar-right"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>






			<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js"
				integrity="sha512-i9cEfJwUwViEPFKdC1enz4ZRGBj8YQo6QByFTF92YXHi7waCqyexvRD75S5NVTsSiTv7rKWqG9Y5eFxmRsOn0A=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		</body>

		</html>