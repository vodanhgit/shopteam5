<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<div class="container shopping-cart"> 
  <div class="row"> 
	<div style="text-align: center; justify-content: center; height: 256px">
			<div class="row">
						<h4>Hồ sơ của tôi</h4> <br>
							&nbsp;&nbsp;&nbsp;&nbsp;	<a class="dropdown-item" href="/logout">Đăng xuất</a>&nbsp;|&nbsp;
							<a class="dropdown-item" href="/doimatkhau">Đổi mật khẩu</a>
						<hr>
						
						<form action="/capnhat" method="post"
							enctype="multipart/form-data">
							<div class="col-lg-9">
								<div class="border border-black border border-4">

									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Tên đăng
											nhập: </label> <input readonly="readonly" name="tenTaiKhoan"
											value="${thongtintaikhoan.tenTaiKhoan}" />

									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Họ Tên:
										</label> <input name="hoTenNguoiDung" ${ten}
											value="${thongtintaikhoan.hoTenNguoiDung}" />

									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Email: </label>
										<input name="email" value="${thongtintaikhoan.email}" ${ten} />
									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Số Điện
											Thoại: </label> <input name="soDienThoai"
											value="0${thongtintaikhoan.soDienThoai}" ${ten} />
									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;margin-left: -5%">Giới
											Tính: </label> <input type="radio" ${ten}
											${thongtintaikhoan.gioiTinh? 'checked':''}
											value="${thongtintaikhoan.gioiTinh?' true':'false' }"
											id="contactChoice1" name="gioiTinh"
											value="${thongtintaikhoan.gioiTinh}" /> <label
											for="contactChoice1" class="me-3">Nam</label> <input
											${thongtintaikhoan.gioiTinh? 'checked':''} type="radio"
											id="contactChoice2" name="gioiTinh"
											value="${thongtintaikhoan.gioiTinh?' true':'false' }" /> <label
											for="contactChoice2" class="me-3">Nữ</label>
												
									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Hình
											Ảnh: </label> <img alt="" style="margin-left: 15%" src="/images/${thongtintaikhoan.hinhAnh}"
											width="80px"> <input style="margin-left: 50%" type="file" name="photo_file"
											${ten} value="${thongtintaikhoan.hinhAnh}">
									</div>
									<div class="form-group mt-3">
										<label style="width: 15%; font-weight: bold;">Ngày
											Sinh: </label> <input name="ngaySinh" type="date" ${ten}
											value="${thongtintaikhoan.ngaySinh}" />
									</div>
									
									<div class="form-group mt-3">
										 <button type="submit" class="btn btn-primary">
											Lưu</button>
										 <a href="/sua" class="btn btn-primary" type="button">Sửa</a>
									     <a href="/huy"class="btn btn-primary" type="button">Hủy</a>
									</div>

								</div>
							</div>

							<div class="col-lg-3">
								 
								 
							</div>
						</form>
					</div>
		</div>
	</div>
</div>