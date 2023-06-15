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
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String product(Model model, Optional<Integer> m, Optional<String> kw) {
		
		Pageable pageable = PageRequest.of(m.orElse(0), 5);
		Page<SanPham> itemsPage = spdao.findAll(pageable);
		
		SanPham item = new SanPham();
		model.addAttribute("item", item);

		List<SanPham> items = itemsPage.getContent();
		model.addAttribute("items", items);

		/*
		 * String kwords = kw.orElse(("keywords")); List<SanPham> keywords =
		 * spdao.findAll(pageable); model.addAttribute("keywords", keywords);
		 */
		return "/admin/products/product";
	}

	@RequestMapping("khuyenmai")
	public String khuyenmai() {
		return "/admin/khuyenmais/khuyenmai";
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
	public String orderManagement(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("m") Optional<Integer> m) {
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

	@ModelAttribute("gioitinh")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Nữ");
		map.put(true, "Nam");
		return map;
	}

	@ModelAttribute("quyen")
	public Map<Boolean, String> list_role() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Client");
		map.put(true, "Admin");
		return map;
	}

	@RequestMapping("create")
	public String create(TaiKhoan item, @RequestParam("photo_filesp") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		List<TaiKhoan> items = taikhoandao.findAll();
		// item.setMaTaiKhoan(items.size() + 1);
		item.setHinhAnh(filename);
		taikhoandao.save(item);
		return "redirect:account";
	}

	// sản phẩm
	@RequestMapping("/edit/{maSanPham}")
	public String edit(Model model, @PathVariable("maSanPham") Integer maSanPham) {
		SanPham item = spdao.findById(maSanPham).get();
		model.addAttribute("item", item);
		List<SanPham> items = spdao.findAll();
		model.addAttribute("items", items);
		return "/admin/products/product";
	}

	@ModelAttribute("list_category")
	public Map<String, String> getSanPham() {
		Map<String, String> map = new HashMap<>();
		List<SanPham> sanphamitems = spdao.findAll();
		for (SanPham item : sanphamitems) {
			map.put(item.getTrangThai(), item.getTrangThai());
		}
		return map;
	}

	@ModelAttribute("list_mau")
	public Map<String, String> getSanPhams() {
		Map<String, String> map = new HashMap<>();
		List<SanPham> sanphamitems = spdao.findAll();
		for (SanPham item : sanphamitems) {
			map.put(item.getMau(), item.getMau());
		}
		return map;
	}

	@ModelAttribute("list_size")
	public Map<String, String> getSanPhamSize() {
		Map<String, String> map = new HashMap<>();
		List<SanPham> sanphamitems = spdao.findAll();
		for (SanPham item : sanphamitems) {
			map.put(item.getSize(), item.getSize());
		}
		return map;
	}

	@RequestMapping("createsp")
	public String createsp(@Validated @ModelAttribute("item") SanPham item, BindingResult result, @RequestParam("file") MultipartFile img,
			Model model) throws IllegalAccessException, IOException {
		if (result.hasErrors() || img.isEmpty()) {
			model.addAttribute("messages", "Vui lòng sửa các lỗi sau");
			if (img.isEmpty()) {
				model.addAttribute("messages_img", "Vui lòng chọn hình ảnh");
				
			}
			return "/admin/products/product";
		} else {

		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/products/large/" + filename));
		img.transferTo(file);
		List<SanPham> items = spdao.findAll();
		item.setMaSanPham(items.size() + 1);
		item.setHinhAnh(filename);

		model.addAttribute("item", item);
		model.addAttribute("messages", "Chúc mừng ban nhập đúng");
		spdao.save(item);
		}
		return "redirect:product";
		
	}

	@RequestMapping("update")
	public String update(SanPham item, @RequestParam("file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/products/large/" + filename));
		img.transferTo(file);
		item.setHinhAnh(filename);
		spdao.save(item);
		return "redirect:product" /* + item.getMaSanPham() */;
	}

}
