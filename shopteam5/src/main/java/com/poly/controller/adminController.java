package com.poly.controller;

import java.io.File;
import java.io.IOException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.GioHang;
import com.poly.entities.HoaDon;

import com.poly.entities.SanPham;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.KhuyenMaiDao;
import com.poly.reponstory.SanPhamDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.websocket.Session;

@Controller
@RequestMapping("admin")
public class adminController {
	@Autowired
	SanPhamDao spdao; // làm việc với bảng Product

	@Autowired
	TaiKhoanDao taikhoandao;

	@Autowired
	HoaDonDao hoadondao;
	@Autowired
	GioHangDao giohangdao;
	@Autowired
	KhuyenMaiDao khuyenmaidao;
	@Autowired
	HoaDonChiTietDao hoadonchitietdao;

	@Autowired
	ServletContext app;
	@Autowired
	SessionService session;
	public String dk() {
		return "forward:/checkout";
	}

	@RequestMapping("trangchuadmin")
	public String index(Model model, TaiKhoan taikhoan) {
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();
		model.addAttribute("items", items);

		return "/admin/index";
	}

	@RequestMapping("account")
	public String account(Model model, TaiKhoan taikhoan) {
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();
		model.addAttribute("items", items);
		return "/admin/accounts/account";
	}

	@RequestMapping("product")
	public String product(Model model) {
		SanPham item = new SanPham();
		model.addAttribute("item", item);
		List<SanPham> items = spdao.findAll();
		// List<GioHang> items = giohangdao.findAll();
		model.addAttribute("items", items);
		return "/admin/products/product";
	}

	@RequestMapping("categori")
	public String category() {
		return "/admin/categories/category";
	}

	@RequestMapping("oder")
	public String oder() {
		return "/admin/categories/category";
	}

	@RequestMapping("management")
	public String orderManagement(Model model, @RequestParam("keywords") Optional<String> kw, @RequestParam("m") Optional<Integer> m) {
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
		HoaDon hd = new HoaDon();
		model.addAttribute("hd", hd);
		List<HoaDon> hds = hoadondao.findAll();
		model.addAttribute("hds", hds);
		Pageable pageable = PageRequest.of(m.orElse(0), 1);
		Page<HoaDon> pagehd = hoadondao.findAll(pageable);
//		Page<HoaDon> pagehd = hoadondao.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("pagehd", pagehd);
		return "/admin/orderManagement/orderManagement";
	}

	@RequestMapping("infoManagement")
	public String infoManagement(Model model, @RequestParam("f") Optional<Integer> f) {
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<HoaDon> items = hoadondao.findAll();
		model.addAttribute("items", items);
		return "/admin/infoManagement/infoManagement";
	}

	@RequestMapping("thongke")
	public String thongke() {
		return "/admin/thongke/thongke";
	}

	@ModelAttribute("list_yesno")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Nữ");
		map.put(true, "Nam");
		return map;
	}

	@ModelAttribute("list_role")
	public Map<Boolean, String> list_role() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Client");
		map.put(true, "Admin");
		return map;
	}
		
	@RequestMapping("create")
	public String create(TaiKhoan item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		List<TaiKhoan> items = taikhoandao.findAll();
		item.setMaTaiKhoan(items.size() + 1);
		item.setHinhAnh(filename);
		taikhoandao.save(item);

		return "redirect:account";
	}
}
