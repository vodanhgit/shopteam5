
package com.poly.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.entities.TaiKhoan;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.MailerServiceImpl;
import com.poly.service.SessionService_quenMatKhau;

@Controller
public class quenMatKhauController {
	@Autowired
	MailerServiceImpl mailer;
	@Autowired 
	TaiKhoanDao taikhoanDao;

	@Autowired
	SessionService_quenMatKhau sessionService_quenmatkhau;
	
	@GetMapping("trangQuenMatKhau")
	public String index() {
		return "quenMatKhau";
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
	String icon1 = ""
			+"Mã xác nhận email của bạn là: <h>"+randomString+"</h>\n"
			+ "████████████████████████████████████████\n"
			+ "████████████████████████████████████████\n"
			+ "██████▀░░░░░░░░▀████████▀▀░░░░░░░▀██████\n"
			+ "████▀░░░░░░░░░░░░▀████▀░░░░░░░░░░░░▀████\n"
			+ "██▀░░░░░░░░░░░░░░░░▀▀░░░░░░░░░░░░░░░░▀██\n"
			+ "██░░░░░░░░░░░░░░░░░░░▄▄░░░░░░░░░░░░░░░██\n"
			+ "██░░░░░░░░░░░░░░░░░░█░█░░░░░░░░░░░░░░░██\n"
			+ "██░░░░░░░░░░░░░░░░░▄▀░█░░░░░░░░░░░░░░░██\n"
			+ "██░░░░░░░░░░████▄▄▄▀░░▀▀▀▀▄░░░░░░░░░░░██\n"
			+ "██▄░░░░░░░░░████░░░░░░░░░░█░░░░░░░░░░▄██\n"
			+ "████▄░░░░░░░████"+randomString+"░█░░░░░░░░▄████\n"
			+ "██████▄░░░░░████▄▄▄░░░░░░░█░░░░░░▄██████\n"
			+ "████████▄░░░▀▀▀▀░░░▀▀▀▀▀▀▀░░░░░▄████████\n"
			+ "██████████▄░░░░░░░░░░░░░░░░░░▄██████████\n"
			+ "████████████▄░░░░░░░░░░░░░░▄████████████\n"
			+ "██████████████▄░░░░░░░░░░▄██████████████\n"
			+ "████████████████▄░░░░░░▄████████████████\n"
			+ "██████████████████▄▄▄▄██████████████████\n"
			+ "████████████████████████████████████████\n"
			+ "████████████████████████████████████████\n";
	@RequestMapping("sendemail/{email}")
	public String sendemail(Model model, @PathVariable("email") String email) {
		sessionService_quenmatkhau.set("maxacnhan_email", randomString);
		String styledIcon1 = icon1.replace("\n", "<br>")
                .replace(" ", "&nbsp;")
                .replace("<h>", "<h3 style=\"color: blue; text-decoration: underline;\">")
                .replace("</h>", "</h3>");
		model.addAttribute("email", email);
		String content = "<html><body>" + styledIcon1 + "</body></html>";
		mailer.send(email, Subject, content);
		return "quenmatkhau_xacnhanma";
	}
	
	@RequestMapping("kiemtraemail")
	public String kiemtraemail(Model model,   @RequestParam("email") String email) {
		
		if (email.equals("")) {
			model.addAttribute("kiemtramail","<<<  Vui lòng nhập email  >>>");
			return "quenMatKhau";
		}
		else {
			TaiKhoan kiemtramail = taikhoanDao.findByEmail(email);
			if (kiemtramail==null) {
				model.addAttribute("kiemtramail","<<<  Email không tồn tại  >>>");
				return "quenMatKhau";
			}
			else {
				return "redirect:/sendemail/"+email;
			}
		}
	}	
	String emailthaydoimatkhau = "";
	@RequestMapping("xacnhanma/{email}")
	public String xacnhanma(Model model,@PathVariable("email") String email, @RequestParam("maxacnhan") String maxacnhan) {
		if (maxacnhan.equals("")) {
			model.addAttribute("kiemtramaxacnhan","<<<  Vui lòng nhập mã xác nhận!  >>>");
			model.addAttribute("email", email);
			return "quenmatkhau_xacnhanma";
		}
		else if (!maxacnhan.equals( sessionService_quenmatkhau.get("maxacnhan_email"))) {
			model.addAttribute("kiemtramaxacnhan","<<<  Mã xác nhận không hợp lệ!  >>>");
			model.addAttribute("email", email);
			return "quenmatkhau_xacnhanma";
		}
		emailthaydoimatkhau = email;
		return "redirect:/thaydoimatkhau";
	}
	
	String thongbaothaydoimatkhau_tendangnhap="";
	String thongbaothaydoimatkhau_matkhau="";
	String tendn;
	String matk;
	@RequestMapping("thaydoimatkhau")
	public String thaydoimatkhau(Model model) {
		model.addAttribute("email",emailthaydoimatkhau);
		model.addAttribute("thongbaothaydoimatkhau_tendangnhap", thongbaothaydoimatkhau_tendangnhap);
		model.addAttribute("thongbaothaydoimatkhau_matkhau", thongbaothaydoimatkhau_matkhau);
		model.addAttribute("tendn", tendn);
		model.addAttribute("matk", matk);
		return "quenmatkhau_thaydoimatkhau";
	}
	
	
	
	@RequestMapping("xacnhanthaydoimatkhau/{email}")
	public String xacnhanthaydoimatkhau(Model model,@PathVariable("email") String email, 
														@RequestParam("tendangnhap") String tenDangNhap, 
															@RequestParam("matkhau") String matkhau, 
																@RequestParam("xacnhanmatkhau") String xacnhanmatkhau) {
		TaiKhoan kiemtrataikhoan_email = taikhoanDao.findByEmail(email);
		tendn = tenDangNhap;
		matk = matkhau;
		if (!tenDangNhap.equals(kiemtrataikhoan_email.getTenTaiKhoan())) {
			thongbaothaydoimatkhau_tendangnhap = "Tên đăng nhập không hợp lệ!";
			return "redirect:/thaydoimatkhau";
		}
		else if(!xacnhanmatkhau.equals(matkhau)) {
			thongbaothaydoimatkhau_tendangnhap="";
			thongbaothaydoimatkhau_matkhau = "Xác nhận mật khẩu không hợp lệ!";
			return "redirect:/thaydoimatkhau";
		}
		else {
			kiemtrataikhoan_email.setMatKhau(matkhau);
			taikhoanDao.save(kiemtrataikhoan_email);
			return "dangNhap";
		}
	}
}