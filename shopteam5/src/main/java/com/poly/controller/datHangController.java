package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@Controller
public class datHangController {
	@Autowired
	HoaDonChiTietDao hoadonchitietdao;
	@Autowired
	HoaDonDao hoadondao;
	@Autowired
	SessionService sessionService;
	
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
		@RequestParam("diaChi") Optional<String> dc) {
		String diachi = dc.orElse(session.get("diaChi"));
		session.set("diaChi", diachi);
		String myValue = sessionService.get("username");
		TaiKhoan tk = taiKhoanDao.findByTenTaiKhoanThongThuong(myValue);
		int mtk = tk.getMaTaiKhoan();
		HoaDon hd = hoadondao.findByMaHoaDon(mtk);
		int mtkhd = hd.getMaHoaDon();
		List<HoaDon> hdd = hoadondao.deleteAllById(mtkhd);
		Pageable pageable = PageRequest.of(f.orElse(0), 2);
		Page<HoaDon> pagehd = hoadondao.findAll(pageable);
		Page<HoaDonChiTiet> pagehdct = hoadonchitietdao.findAll(pageable);
		Page<HoaDon> pagehds = hoadondao.findAllByDiaChi("%" + diachi + "%", pageable);

		List<HoaDonChiTiet> items = pagehdct.getContent(); // Get content from Page object
		List<HoaDon> hds = pagehd.getContent();
		List<HoaDon> hdss = pagehds.getContent();

		model.addAttribute("hds", items); // Assign the items list to the "items" attribute
		model.addAttribute("hds", hds); // Assign the hds list to the "hds" attribute
		model.addAttribute("hds", hdss); // Assign the hdss list to the "hdss" attribute

		model.addAttribute("pagehd", pagehd);
		model.addAttribute("pagehd", pagehds);

		return"infoMan/infoMan";
	}
	
}
