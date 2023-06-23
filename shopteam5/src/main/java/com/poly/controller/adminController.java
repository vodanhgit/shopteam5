package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.HoaDon;
import com.poly.entities.HoaDonChiTiet;
import com.poly.entities.PhanLoai;
import com.poly.entities.SanPham;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.KhuyenMaiDao;
import com.poly.reponstory.PhanLoaiDao;
import com.poly.reponstory.SanPhamDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

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
	PhanLoaiDao pldao;

	@Autowired
	ServletContext app;
	@Autowired
	SessionService session;

int ma =0;
	@RequestMapping("trangchuadmin")
	public String index(Model model, TaiKhoan taikhoan, HttpServletRequest req) {
//		try {
		if(ma==1) {
			model.addAttribute("huy", "Hủy");
			model.addAttribute("ten", null);
		}else {
			model.addAttribute("huy", null);
			model.addAttribute("ten","readonly");
		}
			String check = session.get("username");
			System.out.println(check);
			TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
			model.addAttribute("thongtintaikhoan", tk);

			TaiKhoan item = new TaiKhoan();
			model.addAttribute("item", item);
			List<TaiKhoan> items = taikhoandao.findAll();
			model.addAttribute("items", items);

//			if (tk.isQuyen() == true) {
//				req.getSession().setAttribute("username", "");
////				sessionService.set("username", untk);
//
//			} else if (tk.isQuyen() == false) {
//
////				sessionService.set("username", "");
//			}
//		} catch (Exception e) {
//			return "redirect:/trangDangNhap";
//		}

		return "/admin/index";
	}
	

//	@RequestMapping("account")
//	public String account(Model model, @RequestParam("m") Optional<Integer> m) {
//		Pageable pageable = PageRequest.of(m.orElse(0), 4);
//		Page<TaiKhoan> page = taikhoandao.findAll(pageable);
//		model.addAttribute("itemTaiKhoan", page);
//			TaiKhoan item = new TaiKhoan();
//			model.addAttribute("item", item);
//			List<TaiKhoan> items = page.getContent();
//			model.addAttribute("items", items);
//			return "/admin/accounts/account";
//	}
//	
//	@RequestMapping("create")
//	public String create(@Validated @ModelAttribute("item") TaiKhoan item,BindingResult result, @RequestParam("photo_file") MultipartFile img, Model model )
//			throws IllegalStateException, IOException {
//		String filename = img.getOriginalFilename();
//		
//		
//		if(result.hasErrors()) {
//			model.addAttribute("message","Vui lòng sủa các lỗi sau: ");
//			System.out.println("lỗi");
//		}else {
//			if (filename.isEmpty()) {
//				List<TaiKhoan> items = taikhoandao.findAll();
//				item.setMaTaiKhoan(items.size() + 1);
//				item.setNgaySinh("01-01-2000");
//				item.setHinhAnh("user.png");
//				taikhoandao.save(item);
//			} else {
//				File file = new File(app.getRealPath("/images/" + filename));
//				img.transferTo(file);
//				List<TaiKhoan> items = taikhoandao.findAll();
//				item.setMaTaiKhoan(items.size() + 1);
//				item.setNgaySinh("01-01-2000");
//				item.setHinhAnh(filename);
//				taikhoandao.save(item);
//				
//			}
//		}
//// 		return "redirect:account";
//	return "/admin/accounts/account";
//	}

//	@RequestMapping("editAccount/{id}")
//	public String editAccount(@PathVariable("id") String mataikhoan) {
//		Integer idtaikhoan = Integer.parseInt(mataikhoan);
//		TaiKhoan taikhoan = taikhoandao.findById(idtaikhoan).get();
//		if (taikhoan.isQuyen()) {
//			taikhoan.setQuyen(false);
//		} else {
//			taikhoan.setQuyen(true);
//		}
//		taikhoandao.save(taikhoan);
//
//		return "redirect:/admin/account";
//	}
//	

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

//	@ModelAttribute("list_mau")
//	public Map<String, String> getSanPhams() {
//		Map<String, String> map = new HashMap<>();
//		List<SanPham> sanphamitems = spdao.findAll();
//		for (SanPham item : sanphamitems) {
//			map.put(item.getMau(), item.getMau());
//		}
//		return map;
//	}

//	@ModelAttribute("list_size")
//	public Map<String, String> getSanPhamSize() {
//		Map<String, String> map = new HashMap<>();
//		List<SanPham> sanphamitems = spdao.findAll();
//		for (SanPham item : sanphamitems) {
//			map.put(item.getSize(), item.getSize());
//		}
//		return map;
//	}

//	@RequestMapping("trangchuadmin")
//	public String index(Model model, TaiKhoan taikhoan) {
//		TaiKhoan item = new TaiKhoan();
//		model.addAttribute("item", item);
//		List<TaiKhoan> items = taikhoandao.findAll();
//		model.addAttribute("items", items);
//
//		return "/admin/index";
//	}
//	

	@RequestMapping("account")
	public String account(Model model, @RequestParam("m") Optional<Integer> m) {
		Pageable pageable = PageRequest.of(m.orElse(0), 4);
		Page<TaiKhoan> page = taikhoandao.findAll(pageable);
		model.addAttribute("itemTaiKhoan", page);
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = page.getContent();
		model.addAttribute("items", items);
		return "/admin/accounts/account";
	}

	@RequestMapping("create")
	public String create(@Validated @ModelAttribute("item") TaiKhoan item, BindingResult result,
			@RequestParam("photo_file") MultipartFile img, Model model) throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();

		if (result.hasErrors()) {
			model.addAttribute("message", "Vui lòng sủa các lỗi sau: ");
			System.out.println("lỗi");
		} else {
			if (filename.isEmpty()) {
				List<TaiKhoan> items = taikhoandao.findAll();
				item.setMaTaiKhoan(items.size() + 1);
				item.setNgaySinh("01-01-2000");
				item.setHinhAnh("user.png");
				taikhoandao.save(item);
			} else {
				File file = new File(app.getRealPath("/images/" + filename));
				img.transferTo(file);
				List<TaiKhoan> items = taikhoandao.findAll();
				item.setMaTaiKhoan(items.size() + 1);
				item.setNgaySinh("01-01-2000");
				item.setHinhAnh(filename);
				taikhoandao.save(item);

			}
		}
// 		return "redirect:account";
		return "/admin/accounts/account";
	}

	@RequestMapping("editAccount/{id}")
	public String editAccount(@PathVariable("id") String mataikhoan) {
		Integer idtaikhoan = Integer.parseInt(mataikhoan);
		TaiKhoan taikhoan = taikhoandao.findById(idtaikhoan).get();
		if (taikhoan.isQuyen()) {
			taikhoan.setQuyen(false);
		} else {
			taikhoan.setQuyen(true);
		}
		taikhoandao.save(taikhoan);

		return "redirect:/admin/account";
	}
	

@RequestMapping("capnhap")
	public String capnhap(@RequestParam("hoTenNguoiDung") String hoTenNguoiDung,
			@RequestParam("email") String email, @RequestParam("soDienThoai") String soDienThoai,
			@RequestParam("gioiTinh") Boolean gioiTinh, @RequestParam("ngaySinh") String ngaysinh,
			@RequestParam("photo_file") MultipartFile img )  throws IllegalStateException, IOException{
		String filename = img.getOriginalFilename();
		String check = session.get("username");
		System.out.println(check);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		
		TaiKhoan taikhoan = new TaiKhoan();
		taikhoan.setHoTenNguoiDung(hoTenNguoiDung);
		taikhoan.setMaTaiKhoan(tk.getMaTaiKhoan());
		taikhoan.setTenTaiKhoan(tk.getTenTaiKhoan());
		taikhoan.setMatKhau(tk.getMatKhau());
		taikhoan.setEmail(email);
		taikhoan.setSoDienThoai(soDienThoai);
		taikhoan.setNgaySinh(ngaysinh);
		taikhoan.setGioiTinh(gioiTinh);
		
		if(filename.isEmpty()) {
			taikhoan.setHinhAnh("user.png");
		}else {
		
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		taikhoan.setHinhAnh(filename);
		}
		taikhoandao.save(taikhoan);
		ma=0;
		
		return "redirect:/admin/trangchuadmin";
	}
	
	@RequestMapping("/sua")
	public String sua() {
	ma=1;
		return "redirect:/admin/trangchuadmin";
	}
	@RequestMapping("/huy")
	public String huy() {
		ma=0;
		return "redirect:/admin/trangchuadmin";
	}

	/* Sản phẩm */
	@RequestMapping("product")
	public String product(Model model, Optional<Integer> m) {

		Pageable pageable = PageRequest.of(m.orElse(0), 5);

		Page<SanPham> itemsPage = spdao.findAll(pageable);

		SanPham item = new SanPham();
		model.addAttribute("item", item);

		List<SanPham> items = itemsPage.getContent();
		model.addAttribute("items", items);

		// Check if the quantity in the "phanloai" classification is 0

		return "/admin/products/product";
	}

	// sản phẩm edit
	@RequestMapping("/edit/{maSanPham}")
	public String editt(Model model, @PathVariable("maSanPham") Integer maSanPham) {
		SanPham item = spdao.findById(maSanPham).get();

		model.addAttribute("item", item);

		List<SanPham> items = spdao.findAll();
		model.addAttribute("items", items);

		return "/admin/products/product";
	}

	@RequestMapping("createsp")
	public String createsp(@Validated @ModelAttribute("item") SanPham item, BindingResult result,
			@RequestParam("file") MultipartFile img, Model model) throws IllegalAccessException, IOException {

		if (img.isEmpty()) {
			model.addAttribute("messages_img", "Vui lòng chọn hình ảnh");

		}

		else {
			String filename = img.getOriginalFilename();
			File file = new File(app.getRealPath("/images/products/large/" + filename));
			img.transferTo(file);

			List<SanPham> items = spdao.findAll();
			item.setMaSanPham(items.size() + 1);
			item.setHinhAnh(filename);

			

			model.addAttribute("messages", "Chúc mừng ban nhập đúng");
			spdao.save(item);
		}

		return "/admin/products/product";
		// return "redirect:product";

	}

	@RequestMapping("updatesp")
	public String updatesp(@Validated @ModelAttribute("item") SanPham item, BindingResult result,
			@RequestParam("file") MultipartFile img, Model model) throws IllegalAccessException, IOException {

		if (img.isEmpty()) {
			model.addAttribute("messages_img", "Vui lòng chọn hình ảnh");

		}

		else {
			String filename = img.getOriginalFilename();
			File file = new File(app.getRealPath("/images/products/large/" + filename));
			img.transferTo(file);
			item.setHinhAnh(filename);
			spdao.save(item);
		}
		return "/admin/products/product";
	}

	/* Phân loại */

	@RequestMapping("phanloai")
	public String phanloai(Model model, Optional<Integer> n) {
		Pageable pageable = PageRequest.of(n.orElse(0), 8);

		Page<PhanLoai> itemplPage = pldao.findAll(pageable);

		PhanLoai itempl = new PhanLoai();
		model.addAttribute("itempl", itempl);

		List<PhanLoai> itemspl = itemplPage.getContent();
		model.addAttribute("itemspl", itemspl);

		return "/admin/phanloai/phanloai";
	}

	/* Edit Phân loại */
	@RequestMapping("/editpl/{maPhanLoai}")
	public String editpl(Model model, @PathVariable("maPhanLoai") Integer maPhanLoai) {

		PhanLoai itempl = pldao.findById(maPhanLoai).get();
		model.addAttribute("itempl", itempl);

		List<PhanLoai> itemspl = pldao.findAll();
		model.addAttribute("itemspl", itemspl);

		return "/admin/phanloai/phanloai";
	}

	/* Create phân loại */
	@RequestMapping("createpl")
	public String createpl(@Validated @ModelAttribute("itempl") PhanLoai itempl, BindingResult result, Model model)
			throws IllegalAccessException, IOException {
		if (result.hasErrors()) {
			model.addAttribute("message", model);
		} else {
			pldao.save(itempl);
		}

		return "/admin/phanloai/phanloai";
		// return "redirect:phanloai";

	}

	@RequestMapping("updatepl")
	public String updatepl(@Validated @ModelAttribute("itempl") PhanLoai itempl, BindingResult result, Model model)
			throws IllegalAccessException, IOException {
		if (result.hasErrors()) {
			model.addAttribute("message", model);
		} else {
			pldao.save(itempl);
		}

		return "/admin/phanloai/phanloai";
		// return "redirect:phanloai";

	}

	@ModelAttribute("list_trangthai")
	public Map<String, String> getSanPham() {
		Map<String, String> map = new HashMap<>();
		List<SanPham> sanphamitems = spdao.findAll();
		for (SanPham item : sanphamitems) {
			map.put(item.getTrangThai(), item.getTrangThai());
		}
		return map;
	}

	@RequestMapping("management")
	public String orderManagement(Model model, @RequestParam("field") Optional<String> field, HttpServletRequest req,
			@RequestParam("m") Optional<Integer> m, @RequestParam("trangThai") Optional<String> tt) {

		String trangthai = tt.orElse(session.get("trangThai"));
		session.set("trangThai", trangthai);
		Sort sort = Sort.by(Sort.Direction.DESC, field.orElse("maHoaDon"));
		model.addAttribute("field", field.orElse("maHoaDon").toUpperCase());
		HoaDon hd = new HoaDon();
		model.addAttribute("hd", hd);

		Pageable pageable = PageRequest.of(m.orElse(0), 2, sort);
		Page<HoaDon> pagehds = hoadondao.findAllByTrangThai("%" + trangthai + "%", pageable);
		Page<HoaDon> pagehd = hoadondao.findAll(pageable);

		List<HoaDon> hds = pagehd.getContent();
		List<HoaDon> hdss = pagehds.getContent();
		model.addAttribute("hds", hds);
		model.addAttribute("hds", hdss);
		model.addAttribute("pagehd", pagehd);
		model.addAttribute("pagehds", pagehds);

//	    try {
		String check = session.get("username");
		System.out.println(check);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		model.addAttribute("thongtintaikhoan", tk);

		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();
		model.addAttribute("items", items);
//
//		if (tk.isQuyen() == true) {
//			req.getSession().setAttribute("username", "");
////				sessionService.set("username", untk);
//
//		} else if (tk.isQuyen() == false) {
//
////				sessionService.set("username", "");
//		}
//	}catch(Exception e)
//	{
//			return "redirect:/trangDangNhap";
//			
//		}
	return"/admin/Management/Management";
	}

	@RequestMapping("/edithd/{maHoaDon}")
	public String edit(Model model, @PathVariable("maHoaDon") Integer maHoaDon) {
	    HoaDon hd = hoadondao.findById(maHoaDon).orElse(null);
	    List<HoaDon> hds = hoadondao.findAll();

	    model.addAttribute("hd", hd);
	    model.addAttribute("hds", hds);
	    return "/admin/Management/Management";
	}

	@PostMapping("/updatehd")
	public String updateHd(@ModelAttribute("hd") HoaDon hoadon, @RequestParam("trangThai") String trangThai) {
	    hoadon.setTrangThai(trangThai); // Cập nhật trạng thái của hóa đơn
	    hoadondao.save(hoadon); // Lưu hóa đơn đã cập nhật vào cơ sở dữ liệu
	    return "redirect:/admin/management?field=maHoaDon&keywords=&ngayDatHang=&m=0";
	}

	
	@RequestMapping("thongke")
	public String thongke(Model model) {
		List<Object[]> topProducts = spdao.findTop5BestSellingProductsByCategory();
		model.addAttribute("topProducts", topProducts);
		return "/admin/thongke/thongke";
	}
}
