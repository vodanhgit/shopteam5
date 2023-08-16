package com.poly.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.constant.SessionAttr;
import com.poly.entities.GioHang;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.MailerServiceImpl;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.SessionService_quenMatKhau;

@Controller
public class AccountController {
	@Autowired
	MailerServiceImpl mailer;

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
					session.setAttribute(SessionAttr.CURRENT_USER, untk);
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

	@RequestMapping("/home/log-out")
	public String logout(Model model, HttpServletRequest req) {
		session.removeAttribute(SessionAttr.CURRENT_USER);
		session.removeAttribute(SessionAttr.Admin);
		session.removeAttribute(SessionAttr.User);

		return "redirect:/home/index";
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

	@RequestMapping("/home/check-mail")
	public String check_mail(Model model, @RequestParam("email") String email) {
		if (email.equals("")) {
			model.addAttribute("kiemtramail", "<<<  Vui lòng nhập email  >>>");
			return "quenMatKhau";
		} else {
			TaiKhoan kiemtramail = taiKhoanDao.findByEmail(email);
			if (kiemtramail == null) {
				model.addAttribute("kiemtramail", "<<<  Email không tồn tại  >>>");
				return "home/forgot-password";
			} else {
				model.addAttribute("email", email);
				return "redirect:/home/send-email/" + email;
			}
		}
	}
	
	@RequestMapping("/home/send-email/{email}")
	public String sendemail(Model model, @PathVariable("email") String email) {
		sessionService_quenmatkhau.set("maxacnhan_email", randomString);
		String styledIcon1 = icon1.replace("\n", "<br>")
                .replace(" ", "&nbsp;")
                .replace("<h>", "<h3 style=\"color: blue; text-decoration: underline;\">")
                .replace("</h>", "</h3>");
		model.addAttribute("email", email);
		String content = "<html><body>" + styledIcon1 + "</body></html>";
		mailer.send(email, Subject, content);
		System.out.println(email +'1');
		return "home/check-mail";
	}
	
	String emailthaydoimatkhau = "";
	@RequestMapping("/home/check-code/{email}")
	public String xacnhanma(Model model,@RequestParam("email") String email, @RequestParam("maxacnhan") String maxacnhan) {
		if (maxacnhan.equals("")) {
			model.addAttribute("kiemtramaxacnhan","<<<  Vui lòng nhập mã xác nhận!  >>>");
			model.addAttribute("email", email);
			return "home/check-mail";
		}
		else if (!maxacnhan.equals( sessionService_quenmatkhau.get("maxacnhan_email"))) {
			model.addAttribute("kiemtramaxacnhan","<<<  Mã xác nhận không hợp lệ!  >>>");
			model.addAttribute("email", email);
			return "home/check-mail";
		}
		System.out.println(email);
		emailthaydoimatkhau = email.toString();
		return "redirect:/home/set-new-password";
	}

	String thongbaothaydoimatkhau_tendangnhap="";
	String thongbaothaydoimatkhau_matkhau="";
	String tendn;
	String matk;
	@GetMapping("/home/set-new-password")
	public String set_new_password(Model model) {
		model.addAttribute("email",emailthaydoimatkhau);
		System.out.println(emailthaydoimatkhau);
		model.addAttribute("thongbaothaydoimatkhau_tendangnhap", thongbaothaydoimatkhau_tendangnhap);
		model.addAttribute("thongbaothaydoimatkhau_matkhau", thongbaothaydoimatkhau_matkhau);
		model.addAttribute("tendn", tendn);
		model.addAttribute("matk", matk);
		return "home/set-new-password";
	}
	
	@RequestMapping("/home/fg-chane-password/{email}")
	public String xacnhanthaydoimatkhau(Model model,@RequestParam("email") String email, 
														@RequestParam("tendangnhap") String tenDangNhap, 
															@RequestParam("matkhau") String matkhau, 
																@RequestParam("xacnhanmatkhau") String xacnhanmatkhau) {
		TaiKhoan kiemtrataikhoan_email = taiKhoanDao.findByEmail(email);
		tendn = tenDangNhap;
		matk = matkhau;
		
		if(kiemtrataikhoan_email == null) {
			model.addAttribute("message", "Không tìm thấy tài khoản có mail tương tự!");
			return "home/set-new-password";
		}
		
		if (!tenDangNhap.equals(kiemtrataikhoan_email.getTenTaiKhoan())) {
			thongbaothaydoimatkhau_tendangnhap = "Tên đăng nhập không hợp lệ!";
			return "redirect:/home/set-new-password";
		}
		else if(!xacnhanmatkhau.equals(matkhau)) {
			thongbaothaydoimatkhau_tendangnhap="";
			thongbaothaydoimatkhau_matkhau = "Xác nhận mật khẩu không hợp lệ!";
			return "redirect:/home/set-new-password";
		}
		else {
			kiemtrataikhoan_email.setMatKhau(matkhau);
			taiKhoanDao.save(kiemtrataikhoan_email);
			model.addAttribute("message", "Bạn đã đổi mật khẩu thành công! Vui lòng đăng nhập!");
			return "home/login";
		}
	}

	@GetMapping("/home/chane-password")
	public String chane_password() {
		return "home/chane-password";
	}

	@PostMapping("/home/chanepassword")
	public String dmk(Model model, HttpServletRequest req) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		String pwm = paramService.getString("passwordm", "");
		String pwm1 = paramService.getString("passwordm1", "");
		if (un.equals("") || pw.equals("")) {
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
		} else {
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
