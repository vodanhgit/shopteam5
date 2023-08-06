package com.poly.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@PostMapping("dangNhap")
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
					sessionService.set("username", untk);
					System.out.println("Đăng nhập thành công!");
					if (tk.isQuyen()) {
						req.getSession().setAttribute("quanly", untk);
						req.getSession().setAttribute("user", null);
					} else {
						req.getSession().setAttribute("quanly", null);
						req.getSession().setAttribute("user", untk);
					}
					return "redirect:/home/index";
				} else {
					req.getSession().setAttribute("quanly", null);
					req.getSession().setAttribute("user", null);
					sessionService.remove("username");
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
		req.getSession().setAttribute("quanly", null);
		req.getSession().setAttribute("user", null);

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

	String randomString = generateRandomString(10);
	String Subject = "███ SHOPTEAM5 XIN CHÀO, ĐÂY LÀ MÃ XÁC NHẬN CỦA BẠN ███";
	String icon1 = "" + "Mã xác nhận email của bạn là: <h>" + randomString + "</h>\n"
			+ "████████████████████████████████████████\n" + "████████████████████████████████████████\n"
			+ "██████▀░░░░░░░░▀████████▀▀░░░░░░░▀██████\n" + "████▀░░░░░░░░░░░░▀████▀░░░░░░░░░░░░▀████\n"
			+ "██▀░░░░░░░░░░░░░░░░▀▀░░░░░░░░░░░░░░░░▀██\n" + "██░░░░░░░░░░░░░░░░░░░▄▄░░░░░░░░░░░░░░░██\n"
			+ "██░░░░░░░░░░░░░░░░░░█░█░░░░░░░░░░░░░░░██\n" + "██░░░░░░░░░░░░░░░░░▄▀░█░░░░░░░░░░░░░░░██\n"
			+ "██░░░░░░░░░░████▄▄▄▀░░▀▀▀▀▄░░░░░░░░░░░██\n" + "██▄░░░░░░░░░████░░░░░░░░░░█░░░░░░░░░░▄██\n"
			+ "████▄░░░░░░░████" + randomString + "░█░░░░░░░░▄████\n" + "██████▄░░░░░████▄▄▄░░░░░░░█░░░░░░▄██████\n"
			+ "████████▄░░░▀▀▀▀░░░▀▀▀▀▀▀▀░░░░░▄████████\n" + "██████████▄░░░░░░░░░░░░░░░░░░▄██████████\n"
			+ "████████████▄░░░░░░░░░░░░░░▄████████████\n" + "██████████████▄░░░░░░░░░░▄██████████████\n"
			+ "████████████████▄░░░░░░▄████████████████\n" + "██████████████████▄▄▄▄██████████████████\n"
			+ "████████████████████████████████████████\n" + "████████████████████████████████████████\n";

	public static String generateRandomString(Integer length) {
		if (length == null) {
			throw new IllegalArgumentException("Length must not be null");
		}
		String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			int index = random.nextInt(characters.length());
			char randomChar = characters.charAt(index);
			sb.append(randomChar);
		}

		return sb.toString();
	}
}
