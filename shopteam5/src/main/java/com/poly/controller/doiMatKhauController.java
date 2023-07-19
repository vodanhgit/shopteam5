package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.poly.entities.TaiKhoan;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class doiMatKhauController {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CookieService cookieService;
	
	@Autowired
	TaiKhoanDao taiKhoanDao; 
	
	@Autowired
	HttpServletRequest req;

	@GetMapping("/doimatkhau")
	public String trangDangNhap() {
		return "doiMatKhau";
	}
	@PostMapping("dmk")
	public String dmk( Model model, HttpServletRequest req) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		String pwm = paramService.getString("passwordm", "");
		String pwm1 = paramService.getString("passwordm1", "");
		if(un.equals("")||pw.equals("")){
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
		}else{
			  if (!pwm.equals(pwm1)) {
		            model.addAttribute("message", "Xác nhận mật khẩu mới không khớp.");
		            return "doiMatKhau";
		        }

		        // Lấy thông tin tài khoản từ cơ sở dữ liệu
		        TaiKhoan taiKhoan = taiKhoanDao.findByTenTaiKhoanThongThuong(un);

		        // Kiểm tra mật khẩu cũ
		        if (!taiKhoan.getMatKhau().equals(pw)) {
		            model.addAttribute("message", "Mật khẩu cũ không đúng.");
		            return "doiMatKhau";
		        }

		        // Cập nhật mật khẩu mới
		        taiKhoan.setMatKhau(pwm);
		        taiKhoanDao.save(taiKhoan);

		        // Hiển thị thông báo thành công
		        model.addAttribute("message", "Đổi mật khẩu thành công.");

		        return "doiMatKhau";
		    }
	

		return "doiMatKhau";
	}
}