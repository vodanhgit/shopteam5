package com.poly.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.constant.SessionAttr;
import com.poly.entities.GioHang;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.SessionService_quenMatKhau;

@Controller
public class AccountController {
//	@Autowired
//	MailerServiceImpl mailer;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	SessionService sessionService;

	@Autowired
	SessionService_quenMatKhau sessionService_quenmatkhau;

	@Autowired
	ParamService paramService;

	@Autowired
	CookieService cookieService;

	@Autowired
	TaiKhoanDao taiKhoanDao;

	@Autowired
	GioHangDao gioHangDao;

	@GetMapping("/home/login")
	public String login() {
		return "home/login";
	}

	@PostMapping("/home/dangNhap")
	public String login2(Model model, HttpServletRequest req) {

		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		// Kiểm tra thông tin đăng nhập
		if (un.equals("") || pw.equals("")) {
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
		} else {
			try {
				TaiKhoan tk = taiKhoanDao.findByTenTaiKhoanThongThuong(un);
				String untk = un;
				if (un.equalsIgnoreCase(tk.getTenTaiKhoan()) && pw.equals(tk.getMatKhau())) {

					if (rm) {
						cookieService.add("user", untk, 10);
					} else {
						cookieService.remove("user");
					}
					model.addAttribute("message", "Đăng nhập thành công!");
					System.out.println(0);
					System.out.println("Đăng nhập thành công!");
					if (tk.isQuyen()) {
						session.setAttribute(SessionAttr.Admin, untk);
						System.out.println(1);
					} else {
						session.setAttribute(SessionAttr.User, untk);
						System.out.println(2);
					}
					return "redirect:/home/index";
				} else {
					model.addAttribute("message", "Sai thông tin!");
				}
			} catch (Exception e) {
				model.addAttribute("message", "Sai thông tin!");
			}

		}

		return "home/login";
	}

	@RequestMapping("logout")
	public String logout(Model model, HttpServletRequest req) {
		

		return "home/index";
	}

	@GetMapping("/home/register")
	public String register() {
		return "home/register";
	}

	@RequestMapping("dangKy")
	public String dangKyTaiKhoan(Model model, @RequestParam("tendangnhap") String tendangnhap,
			@RequestParam("matkhau") String matkhau, @RequestParam("xacnhanmatkhau") String xacnhanmatkhau,
			@RequestParam("hovaten") String hovaten) {
		TaiKhoan timtaikhoan = taiKhoanDao.findByTenTaiKhoanThongThuong(tendangnhap);
		if (!xacnhanmatkhau.equals(matkhau)) {
			model.addAttribute("thongbaodangky",
					"<<<  Xác nhận mật khẩu không hợp lệ, phải trùng khớp với mật khẩu  >>>!");
		}

		else if (timtaikhoan != null) {
			model.addAttribute("thongbaodangky_tentaikhoan", "<<<  Tên tài khoản đã được sử dụng!  >>>");
		} else {
			List<TaiKhoan> items = taiKhoanDao.findAll();
			TaiKhoan themtaikhoan = new TaiKhoan();
			themtaikhoan.setMaTaiKhoan(items.size() + 1);
			themtaikhoan.setHoTenNguoiDung(hovaten);
			themtaikhoan.setTenTaiKhoan(tendangnhap);
			themtaikhoan.setMatKhau(matkhau);
			themtaikhoan.setEmail("defalutmail@gmail.com");
			themtaikhoan.setQuyen(false);
			taiKhoanDao.save(themtaikhoan);
			GioHang themgiohang = new GioHang();
			themgiohang.setTaiKhoan(themtaikhoan);
			gioHangDao.save(themgiohang);
			model.addAttribute("thongbaodangkythanhcong", "Đăng ký thành công!");
		}
		return "home/register";
	}

	@GetMapping("/home/forgot-password")
	public String forgot_password() {
		return "home/forgot-password";
	}

	@GetMapping("/home/check-mail")
//	Model model, @PathVariable("email") String email
	public String check_mail() {
//		sessionService_quenmatkhau.set("maxacnhan_email", randomString);
//		String styledIcon1 = icon1.replace("\n", "<br>").replace(" ", "&nbsp;")
//				.replace("<h>", "<h3 style=\"color: blue; text-decoration: underline;\">").replace("</h>", "</h3>");
//		model.addAttribute("email", email);
//		String content = "<html><body>" + styledIcon1 + "</body></html>";
//		mailer.send(email, Subject, content);
		return "home/check-mail";
	}

	@GetMapping("/home/set-new-password")
	public String set_new_password() {
		return "home/set-new-password";
	}

	@GetMapping("/home/chane-password")
	public String chane_password() {
		return "home/chane-password";
	}
	
	@PostMapping("/home/chanepassword")
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
		            return "home/chane-password";
		        }

		        // Lấy thông tin tài khoản từ cơ sở dữ liệu
		        TaiKhoan taiKhoan = taiKhoanDao.findByTenTaiKhoanThongThuong(un);

		        // Kiểm tra mật khẩu cũ
		        if (!taiKhoan.getMatKhau().equals(pw)) {
		            model.addAttribute("message", "Mật khẩu cũ không đúng.");
		            return "home/chane-password";
		        }

		        // Cập nhật mật khẩu mới
		        taiKhoan.setMatKhau(pwm);
		        taiKhoanDao.save(taiKhoan);

		        // Hiển thị thông báo thành công
		        model.addAttribute("message", "Đổi mật khẩu thành công.");

		        return "home/chane-password";
		    }
	

		return "home/chane-password";
	}
}
