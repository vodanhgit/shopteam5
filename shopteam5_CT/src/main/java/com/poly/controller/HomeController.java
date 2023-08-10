package com.poly.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.constant.SessionAttr;
import com.poly.entities.ChiTietGioHang;
import com.poly.entities.GioHang;
import com.poly.entities.PhanLoai;
import com.poly.entities.SanPham;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.ChiTietGioHangDao;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.PhanLoaiDao;
import com.poly.reponstory.SanPhamDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;

@Controller
public class HomeController {

	@Autowired
	SanPhamDao dao;

	@Autowired
	HttpSession session;

	@Autowired
	SessionService sessionService;

	@Autowired
	PhanLoaiDao phanLoaiDao;

	@Autowired
	TaiKhoanDao taikhoanDao;

	@Autowired
	ChiTietGioHangDao chiTietGioHangDao;

	@Autowired
	GioHangDao gioHangDao;

	@GetMapping("/home/index")
	public String index(Model model, Optional<Integer> n) {
		Pageable pageable = PageRequest.of(n.orElse(0), 3);

		Page<SanPham> itemsPage = dao.findByGiaKhuyenMai(pageable);

		SanPham item = new SanPham();
		model.addAttribute("item", item);

		List<SanPham> items = itemsPage.getContent();
		model.addAttribute("items", items);

		System.out.println(items);

		return "home/index";
	}

	String thongbaochitietsanpham;

	@GetMapping("/home/detail-product/{maSanPham}")
	public String mota(Model model, @PathVariable("maSanPham") int msp) {
		List<SanPham> showtheoma = dao.findByMaSanPham(msp);
		SanPham showtheoma1 = dao.findByMaSanPham1(msp);

		model.addAttribute("showsanpham_masanpham", showtheoma1.getMaSanPham());
		model.addAttribute("showsanpham_tensanpham", showtheoma1.getTenSanPham());
		model.addAttribute("showsanpham_trangthai", showtheoma1.getTrangThai());
		model.addAttribute("showsanpham_gia", showtheoma1.getGia());
		model.addAttribute("showsanpham_mota", showtheoma1.getMoTa());
		model.addAttribute("showsanpham_hinhanh", showtheoma1.getHinhAnh());
		model.addAttribute("showsize", "Chọn");
		model.addAttribute("thongbaochitietsanpham", thongbaochitietsanpham);
		List<SanPham> showtheoten = dao.findByTenSanPham(showtheoma1.getTenSanPham());
		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(msp);
		model.addAttribute("showop", showsize);
		return "home/detail-product";
	}

//	@RequestMapping("/home/describe-size/{masanpham}")
//	public String chitietsanphamsize(Model model, @PathVariable("masanpham") int masanpham,
//			@RequestParam("size") String size) {
//		SanPham showtheoma = dao.findByMaSanPham1(masanpham);
//
//		model.addAttribute("showsanpham_masanpham", showtheoma.getMaSanPham());
//		model.addAttribute("showsanpham_tensanpham", showtheoma.getTenSanPham());
//		model.addAttribute("showsanpham_trangthai", showtheoma.getTrangThai());
//		model.addAttribute("showsanpham_gia", showtheoma.getGia());
//		model.addAttribute("showsanpham_mota", showtheoma.getMoTa());
//		model.addAttribute("showsanpham_hinhanh", showtheoma.getHinhAnh());
//
//		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(masanpham);
//		model.addAttribute("showsize", size);
//		model.addAttribute("showop", showsize);
//		model.addAttribute("showmautren", "Chọn");
//		List<PhanLoai> timmau = phanLoaiDao.findByMaSanPhamAndSize(masanpham, size);
//		model.addAttribute("showmau", timmau);
//		return "/home/detail-product";
//	}
//
//	@RequestMapping("/home/describe-color/{masanpham}")
//	public String chitietsanphammau(Model model, @PathVariable("masanpham") int masanpham,
//			@RequestParam("size") String size, @RequestParam("mau") String mau) {
//		SanPham showtheoma = dao.findByMaSanPham1(masanpham);
//
////		List<SanPham> showtheoma = dao.findByMaSanPham(msp);
////		SanPham showtheoma1 = dao.findByMaSanPham1(msp);
////		
//		model.addAttribute("showsanpham_masanpham", showtheoma.getMaSanPham());
//		model.addAttribute("showsanpham_tensanpham", showtheoma.getTenSanPham());
//		model.addAttribute("showsanpham_trangthai", showtheoma.getTrangThai());
//		model.addAttribute("showsanpham_gia", showtheoma.getGia());
//		model.addAttribute("showsanpham_mota", showtheoma.getMoTa());
//		model.addAttribute("showsanpham_hinhanh", showtheoma.getHinhAnh());
//
//		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(masanpham);
//		model.addAttribute("showsize", size);
//		model.addAttribute("showop", showsize);
//		List<PhanLoai> timmau = phanLoaiDao.findByMaSanPhamAndSize(masanpham, size);
//		model.addAttribute("showmau", timmau);
//		model.addAttribute("showmautren", mau);
//		PhanLoai timmaphanloai = phanLoaiDao.findByMaSanPhamAndSizeAndMau(masanpham, size, mau);
//		return "/home/detail-product";
//	}
//
//	@RequestMapping("/home/add-to-cart/{masanpham}")
//	public String themvaogiohang(Model model, @PathVariable("masanpham") int masanpham,
//			@RequestParam("size") String size, @RequestParam("mau") String mau) {
//		try {
//			if (size.equals("") || mau.equals("")) {
//
//				thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
//				return "redirect:home/detail-product/" + masanpham;
//			} else if (mau.equals("Chọn")) {
//				thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
//				return "redirect:/home/detail-product/" + masanpham;
//			} else {
//
//				thongbaochitietsanpham = "";
//				SanPham timtheoma = dao.findByMaSanPham1(masanpham);
//				String myValue = sessionService.get("username");
//				TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
//				GioHang gioHang = tk.getGioHangs().get(0);
//
//				ChiTietGioHang ctgh = new ChiTietGioHang();
//
//				ctgh.setGioHang1(gioHang);
//				ctgh.setSanPham1(timtheoma);
//				ctgh.setGia(timtheoma.getGia());
//				ctgh.setSoLuong(1);
//				ctgh.setMau(mau);
//				ctgh.setSize(size);
//				chiTietGioHangDao.save(ctgh);
//
//			}
//		} catch (Exception e) {
//			thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
//			return "redirect:/home/detail-product" + masanpham;
//		}
//
//		return "redirect:/cart_products";
//	}

	@GetMapping("/home/form-ao-nam")
	public String formaonam(Model model) {
		List<SanPham> formaonam = dao.findSanPhamByLoaiNam();
		model.addAttribute("type", "Tất cả áo nam");
		model.addAttribute("list", formaonam);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-thun-nam")
	public String aothunnam(Model model) {
		List<SanPham> aothunnam = dao.findSanPhamAoThunNam();
		model.addAttribute("type", "Áo thun nam");
		model.addAttribute("list", aothunnam);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-polo-nam")
	public String aopolonam(Model model) {
		List<SanPham> aopolonam = dao.findSanPhamAoPoloNam();
		model.addAttribute("type", "Áo polo nam");
		model.addAttribute("list", aopolonam);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-so-mi-nam")
	public String aosominam(Model model) {
		List<SanPham> aosominam = dao.findSanPhamByLoaiAoSoMiNam();
		model.addAttribute("type", "Áo sơ mi nam");
		model.addAttribute("list", aosominam);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-len-nam")
	public String aolennam(Model model) {
		List<SanPham> aolennam = dao.findSanPhamAolenNam();
		model.addAttribute("type", "Áo len nam");
		model.addAttribute("list", aolennam);

		return "/home/type-product";
	}

	@GetMapping("/home/ao-hoodie-nam")
	public String aohoodienam(Model model) {
		List<SanPham> aohoodienam = dao.findSanPhamAoHoodieNam();
		model.addAttribute("type", "Áo hoodie nam");
		model.addAttribute("list", aohoodienam);
		return "/home/type-product";
	}

//	form nữ
	@GetMapping("/home/form-ao-nu")
	public String formaonu(Model model) {
		List<SanPham> formaonu = dao.findSanPhamByLoaiNu();
		model.addAttribute("type", "Tất cả áo nữ");
		model.addAttribute("list", formaonu);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-thun-nu")
	public String aothunu(Model model) {
		
		model.addAttribute("type", "Áo thun nữ");
		return "/home/type-product";
	}

	@GetMapping("/home/ao-thun-nu/{sanpham}")
	public String aothunu(Model model, @PathVariable("sanpham") String loai) {
		List<SanPham> aothunnu = dao.findSanPhamAoThunNu();
		model.addAttribute("type", "Tất cả áo nữ");
		model.addAttribute("list", aothunnu);
		System.out.println(loai);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-so-mi-nu")
	public String aosominu(Model model) {
		model.addAttribute("type", "Áo sơ mi nữ");
		return "/home/type-product";
	}

	@GetMapping("/home/ao-bra")
	public String aobra(Model model) {
//		List<SanPham> aobra = dao.finSanPhamNuBra();
//		model.addAttribute("aobra", aobra);
		List<SanPham> aobra = dao.finSanPhamNuBra();
		model.addAttribute("type", "Áo Bra");
		model.addAttribute("list", aobra);
		return "/home/type-product";
	}

	@GetMapping("/home/ao-len-nu")
	public String aolennu(Model model) {
		model.addAttribute("type", "Áo len nữ");
		return "/home/type-product";
	}

	@GetMapping("/home/ao-hoodie-nu")
	public String aohoodienu(Model model) {
		model.addAttribute("type", "Áo hoodie nữ");
		return "/home/type-product";
	}

//	@GetMapping("/home/detail-product/{maSanPham}")
//	public String mota(Model model, @PathVariable("maSanPham") String maSanPham) {
//
//		SanPham sanPham = dao.findById(Integer.parseInt(maSanPham)).get();
//		model.addAttribute("sanPham", sanPham);
//
//		return "/home/detail-product/{maSanPham}";
//	}

	@RequestMapping("/home/information")
	public String index(Model model, TaiKhoan taikhoan, HttpServletRequest req) {
		try {
			String check = (String) session.getAttribute(SessionAttr.CURRENT_USER);
			System.out.println(check);
			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(check);
			model.addAttribute("thongtintaikhoan", tk);

			TaiKhoan item = new TaiKhoan();
			model.addAttribute("item", item);
			List<TaiKhoan> items = taikhoanDao.findAll();
			model.addAttribute("items", items);

		} catch (Exception e) {
			return "redirect:/home/login";
		}

		return "/home/infor";
	}

//	@PatchMapping("/home/save-information")
//	public String dsveInformation(Model model) 
}
