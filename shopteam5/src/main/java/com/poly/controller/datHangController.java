package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.ChiTietGioHang;
import com.poly.entities.HoaDon;
import com.poly.entities.HoaDonChiTiet;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class datHangController {
	@Autowired
	HoaDonChiTietDao hoadonchitietdao;
	@Autowired
	HoaDonDao hoadondao;
	@Autowired
	SessionService sessionService;
	@Autowired
	TaiKhoanDao taikhoandao;


	@Autowired
	ParamService paramService;
	
	@Autowired
	CookieService cookieService;
	
	@Autowired
	TaiKhoanDao taiKhoanDao; 
	@Autowired
	SessionService session;
	@RequestMapping("infoMan")
	public String infoManagement(Model model, @RequestParam("f") Optional<Integer> f, @RequestParam("field") Optional<String> field,
		@RequestParam("diaChi") Optional<String> dc, HttpServletRequest req) {
		String check = session.get("username");
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		String untk = check; 
		if (tk.isQuyen()==true) {
        } else {	
        	String diachi = dc.orElse(session.get("diaChi"));
    		session.set("diaChi", diachi);
    	
    		Pageable pageable = PageRequest.of(f.orElse(0), 4);

    		
    		Page<HoaDon> pagehdtk = hoadondao.findAllByTaiKhoanMaTaiKhoan(tk.getMaTaiKhoan(),pageable);

    		model.addAttribute("pagehd", pagehdtk);

            	
        }
		

		return"infoMan/infoMan";
	}
	@RequestMapping("chitiethoadon/{idhd}")
	public String infoManagement(Model model, @PathVariable("idhd") Integer idhd, @RequestParam("f") Optional<Integer> f) {
		Pageable pageable = PageRequest.of(f.orElse(0), 4);
		Page<HoaDonChiTiet> pagehdchitiet = hoadonchitietdao.findByMaHoaDon(idhd ,pageable);
            
		model.addAttribute("pagechitiet", pagehdchitiet);
		return"infoMan/chitiethoadonnguoidung";
	}
	
	
}