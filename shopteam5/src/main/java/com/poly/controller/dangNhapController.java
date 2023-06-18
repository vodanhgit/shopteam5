package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.TaiKhoan;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class dangNhapController {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CookieService cookieService;
	@Autowired
	TaiKhoanDao taiKhoanDao;
	
	@GetMapping("/trangDangNhap")
	public String trangDangNhap() {
		return "dangNhap";
	}
	@PostMapping("login")
	public String login2(Model model, HttpServletRequest req) {
		
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		// Kiểm tra thông tin đăng nhập
//		List<TaiKhoan> taikhoandangnhap = taiKhoanDao.findByTenTaiKhoan(un);
		if(un.equals("")||pw.equals("")){
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
		}
		else{
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
					if (tk.isQuyen()==true||tk.isQuyen()==false) {
						req.getSession().setAttribute("username", untk);
//						sessionService.set("username", untk);
						
					}
					return "redirect:/index";
				} 
				else {
					req.getSession().setAttribute("username", "");
					sessionService.remove("username");
					model.addAttribute("message", "Sai thông tin!");
				}
			} catch (Exception e) {
				model.addAttribute("message", "Sai thông tin!");
			}
			
		}
		

		return "dangNhap";
	}
	@RequestMapping("logout")
	public String logout(Model model, HttpServletRequest req) {
		req.getSession().setAttribute("username", "");

		return "index";
	}
	
}