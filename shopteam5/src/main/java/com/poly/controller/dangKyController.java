package com.poly.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.GioHang;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;


@Controller
public class dangKyController {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CookieService cookieService;
	@Autowired
	TaiKhoanDao taiKhoanDao;
	
	@Autowired
	GioHangDao gioHangDao;
	@GetMapping("/trangDangKy")
	public String trangDangKy() {
		return "dangKy";
	}
	@RequestMapping("dangkytaikhoan")
	public String dangKyTaiKhoan(Model model, @RequestParam("tendangnhap") String tendangnhap, 
												@RequestParam("matkhau") String matkhau,
													@RequestParam("xacnhanmatkhau") String xacnhanmatkhau,
														@RequestParam("hovaten") String hovaten) {
		TaiKhoan timtaikhoan = taiKhoanDao.findByTenTaiKhoanThongThuong(tendangnhap);
		if (!xacnhanmatkhau.equals(matkhau)) {
			model.addAttribute("thongbaodangky", "<<<  Xác nhận mật khẩu không hợp lệ, phải trùng khớp với mật khẩu  >>>!");
		}
		
		else if(timtaikhoan != null){
			model.addAttribute("thongbaodangky_tentaikhoan", "<<<  Tên tài khoản đã được sử dụng!  >>>");
		}
		else {
			List<TaiKhoan> items = taiKhoanDao.findAll();
			TaiKhoan themtaikhoan = new TaiKhoan();	
			themtaikhoan.setMaTaiKhoan(items.size() + 1);
			themtaikhoan.setHoTenNguoiDung(hovaten);
			themtaikhoan.setTenTaiKhoan(tendangnhap);
			themtaikhoan.setMatKhau(matkhau);
			themtaikhoan.setQuyen(false);
			taiKhoanDao.save(themtaikhoan);
			GioHang themgiohang = new GioHang();
			themgiohang.setTaiKhoan(themtaikhoan);
			gioHangDao.save(themgiohang);
			model.addAttribute("thongbaodangkythanhcong", "Đăng ký thành công!");
		}
		return "dangKy";
	}
}
