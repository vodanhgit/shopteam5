package com.poly.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
public class ManagemntController {
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

	@GetMapping("/managment/managment")
	public String man(Model model, @RequestParam("field") Optional<String> field, HttpServletRequest req,
			@RequestParam("m") Optional<Integer> m, @RequestParam("trangThai") Optional<String> tt,
			@RequestParam("ngayDatHang") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Optional<LocalDate> ngay) {

		String trangthai = tt.orElse(session.get("trangThai"));
		session.set("trangThai", trangthai);
		Sort sort = Sort.by(Sort.Direction.DESC, field.orElse("maHoaDon"));
		model.addAttribute("field", field.orElse("maHoaDon").toUpperCase());
		HoaDon hd = new HoaDon();
		model.addAttribute("hd", hd);

		Pageable pageable = PageRequest.of(m.orElse(0), 4, sort);
		Page<HoaDon> pagehds = hoadondao.findAllByTrangThai("%" + trangthai + "%", pageable);
		Page<HoaDon> pagehd;
		if (ngay.isPresent()) {
			pagehd = hoadondao.findAllByNgay(ngay.get().toString(), pageable);
			model.addAttribute("ngayDatHang", ngay.get());
		} else {
			pagehd = hoadondao.findAll(pageable);
			model.addAttribute("ngayDatHang", ngay.orElse(null));
		}
		List<HoaDon> hds = pagehd.getContent();
		model.addAttribute("hds", hds);
		model.addAttribute("pagehd", pagehd);
		model.addAttribute("pagehds", pagehds);
		model.addAttribute("ngayDatHang", ngay.orElse(null));
		String check = session.get("username");
		System.out.println(check);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		model.addAttribute("thongtintaikhoan", tk);
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();
		model.addAttribute("items", items);
		return "admin/managment/managment";
	}

	@GetMapping("/edithd/{maHoaDon}")
	public String edit(Model model, @PathVariable("maHoaDon") Integer maHoaDon) {
		HoaDon hd = hoadondao.findById(maHoaDon).orElse(null);
		List<HoaDon> hds = hoadondao.findAll();
		model.addAttribute("hd", hd);
		model.addAttribute("hds", hds);
		model.addAttribute("chontrangthai", chontrangthai); // Add chontrangthai to the model
		return "admin/managment/managment";
	}

	@PostMapping("/updatehd")
	public String updateHd(@ModelAttribute("hd") HoaDon hoadon) {
	    hoadondao.save(hoadon); // Save the updated hoadon to the database
	    return "redirect:admin/managment/managment"; // Corrected the redirect URL
	}


	String chontrangthai = "Chọn trạng thái";
	String chontrangthai_sosanh = "Chọn trạng thái";

	@GetMapping("/infoMan/infoMan")
	public String infoMan(Model model, @RequestParam("f") Optional<Integer> f,
			@RequestParam("field") Optional<String> field, @RequestParam("diaChi") Optional<String> dc,
			HttpServletRequest req) {
		String check = session.get("username");
		List<HoaDon> hds = hoadondao.findAll();
		model.addAttribute("hds", hds);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		String untk = check;
		if (tk.isQuyen() == true) {
		} else {
			String diachi = dc.orElse(session.get("diaChi"));
			session.set("diaChi", diachi);

			Pageable pageable = PageRequest.of(f.orElse(0), 4);

			Page<HoaDon> pagehdtk = hoadondao.findAllByTaiKhoanMaTaiKhoan(tk.getMaTaiKhoan(), pageable);

			model.addAttribute("pagehd", pagehdtk);

		}

		return "infoMan/infoMan";
	}

	@GetMapping("/managment/chitietman")
	public String chitietman(Model model) {
		List<HoaDon> hds = hoadondao.findAll();	
		model.addAttribute("hds", hds);
		List<HoaDonChiTiet>  hdct = hoadonchitietdao.findAll();
		model.addAttribute("hdct", hdct);
		return "admin/managment/chitietman";
	}

	@GetMapping("/infoMan/cthdnd")
	public String infoMancthdnd(Model model) {
		List<HoaDon> hds = hoadondao.findAll();	
		model.addAttribute("hds", hds);
		List<HoaDonChiTiet>  hdct = hoadonchitietdao.findAll();
		model.addAttribute("hdct", hdct);
		return "infoMan/chitiethoadonnguoidung";
	}
}
