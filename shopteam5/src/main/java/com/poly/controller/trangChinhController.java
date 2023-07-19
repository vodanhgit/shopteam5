package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class trangChinhController {
	@Autowired
	SanPhamDao dao; // làm việc với bảng Product
	@Autowired
	SessionService sessionService;
	@Autowired 
	PhanLoaiDao phanLoaiDao;
	@Autowired 
	TaiKhoanDao taikhoanDao;
	@Autowired
	SessionService session;
	
	@Autowired
	private ChiTietGioHangDao chiTietGioHangDao;
	
	@Autowired
	GioHangDao gioHangDao;
//	@RequestMapping("index")
//	public String index(Model model) {
//		List<Object[]> result = dao.findSanPhamWithKhuyenMai();
//
//		for (Object[] row : result) {
//			String productName = (String) row[0];
//			Integer price = (Integer) row[1];
//			String imageUrl = (String) row[2];
//
//			// Perform operations with the retrieved data
////			System.out.println("Product Name: " + productName);
////			System.out.println("Price: " + price);
////			System.out.println("Image URL: " + imageUrl);
////			System.out.println("-----------------------------");
//
//			// Add the data to the model for rendering in the view
//			model.addAttribute("productName", productName);
//			model.addAttribute("price", price);
//			model.addAttribute("imageUrl", imageUrl);
//		}
//		return "index";
//	}
	@RequestMapping("index")
	public String index(Model model, Optional<Integer> n ) {
		
		Pageable pageable = PageRequest.of(n.orElse(0), 3);

		Page<SanPham> itemsPage = dao.findByGiaKhuyenMai(pageable);

		SanPham item = new SanPham();
		model.addAttribute("item", item);

		List<SanPham> items = itemsPage.getContent();
		model.addAttribute("items", items);
		return "index";
		
	}

	
	int check;
	
	@RequestMapping("mota")
	public String mota(Model model) {
//		System.out.println(check);
//		List<SanPham> showtheoma = dao.findByMaSanPham(check);
//		SanPham showtheoma1 = dao.findByMaSanPham1(check);
//		
//		model.addAttribute("showsanpham_masanpham", showtheoma1.getMaSanPham());
//		model.addAttribute("showsanpham_tensanpham", showtheoma1.getTenSanPham());
//		model.addAttribute("showsanpham_trangthai", showtheoma1.getTrangThai());
//		model.addAttribute("showsanpham_gia", showtheoma1.getGia());
//		model.addAttribute("showsanpham_mota", showtheoma1.getMoTa());
//		model.addAttribute("showsanpham_hinhanh", showtheoma1.getHinhAnh());
//		List<SanPham> showtheoten = dao.findByTenSanPham(showtheoma1.getTenSanPham());
//		model.addAttribute("showop", showtheoten);
		
		return "/products/mota";
	}
	String thongbaochitietsanpham;
	@RequestMapping("chitietsanpham/{maSanPham}")
	public String chitietsanpham(Model model,@PathVariable("maSanPham") int msp) {
		List<SanPham> showtheoma = dao.findByMaSanPham(msp);
		SanPham showtheoma1 = dao.findByMaSanPham1(msp);
		
		model.addAttribute("showsanpham_masanpham", showtheoma1.getMaSanPham());
		model.addAttribute("showsanpham_tensanpham", showtheoma1.getTenSanPham());
		model.addAttribute("showsanpham_trangthai", showtheoma1.getTrangThai());
		model.addAttribute("showsanpham_gia", showtheoma1.getGia());
		model.addAttribute("showsanpham_mota", showtheoma1.getMoTa());
		model.addAttribute("showsanpham_hinhanh", showtheoma1.getHinhAnh());
		model.addAttribute("showsize", "Chọn");
		model.addAttribute("thongbaochitietsanpham",thongbaochitietsanpham);
		List<SanPham> showtheoten = dao.findByTenSanPham(showtheoma1.getTenSanPham());
		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(msp);
		model.addAttribute("showop", showsize);
//		List<SanPham> timmau = dao.findByMaSanPham(msp);
//		model.addAttribute("showmau", timmau);
		
		return "/products/mota";
	}
	@RequestMapping("motasize/{masanpham}")
	public String chitietsanphamsize(Model model,@PathVariable("masanpham") Integer masanpham, @RequestParam("size") String size) {
		SanPham showtheoma = dao.findByMaSanPham1(masanpham);

//		List<SanPham> showtheoma = dao.findByMaSanPham(msp);
//		SanPham showtheoma1 = dao.findByMaSanPham1(msp);
//		
		model.addAttribute("showsanpham_masanpham", showtheoma.getMaSanPham());
		model.addAttribute("showsanpham_tensanpham", showtheoma.getTenSanPham());
		model.addAttribute("showsanpham_trangthai", showtheoma.getTrangThai());
		model.addAttribute("showsanpham_gia", showtheoma.getGia());
		model.addAttribute("showsanpham_mota", showtheoma.getMoTa());
		model.addAttribute("showsanpham_hinhanh", showtheoma.getHinhAnh());
		
		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(masanpham);
		model.addAttribute("showsize", size);
		model.addAttribute("showop", showsize);
		model.addAttribute("showmautren", "Chọn");
		List<PhanLoai> timmau = phanLoaiDao.findByMaSanPhamAndSize(masanpham,size);
		model.addAttribute("showmau", timmau);
		return "/products/mota";
	}
	@RequestMapping("motamau/{masanpham}")
	public String chitietsanphammau(Model model,@PathVariable("masanpham") Integer masanpham, @RequestParam("size") String size, @RequestParam("mau") String mau) {
		SanPham showtheoma = dao.findByMaSanPham1(masanpham);

//		List<SanPham> showtheoma = dao.findByMaSanPham(msp);
//		SanPham showtheoma1 = dao.findByMaSanPham1(msp);
//		
		model.addAttribute("showsanpham_masanpham", showtheoma.getMaSanPham());
		model.addAttribute("showsanpham_tensanpham", showtheoma.getTenSanPham());
		model.addAttribute("showsanpham_trangthai", showtheoma.getTrangThai());
		model.addAttribute("showsanpham_gia", showtheoma.getGia());
		model.addAttribute("showsanpham_mota", showtheoma.getMoTa());
		model.addAttribute("showsanpham_hinhanh", showtheoma.getHinhAnh());
		
		List<String> showsize = phanLoaiDao.findDistinctSizesByMaSanPham(masanpham);
		model.addAttribute("showsize", size);
		model.addAttribute("showop", showsize);
		List<PhanLoai> timmau = phanLoaiDao.findByMaSanPhamAndSize(masanpham,size);
		model.addAttribute("showmau", timmau);
		model.addAttribute("showmautren", mau);
		PhanLoai timmaphanloai = phanLoaiDao.findByMaSanPhamAndSizeAndMau(masanpham, size, mau);
		return "/products/mota";
	}
	@RequestMapping("themvaogiohang/{masanpham}")
	public String themvaogiohang(Model model,@PathVariable("masanpham") int masanpham, @RequestParam("size") String size, @RequestParam("mau") String mau) {
		try {
			if (size.equals("")||mau.equals("")) {
				
				thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
				return "redirect:/chitietsanpham/"+masanpham;
			}
			else if (mau.equals("Chọn")) {
				thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
				return "redirect:/chitietsanpham/"+masanpham;
			}
			else {
				
				thongbaochitietsanpham = "";
				SanPham timtheoma = dao.findByMaSanPham1(masanpham);
				String myValue = sessionService.get("username");
				TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
				GioHang gioHang = tk.getGioHangs().get(0);
				
				ChiTietGioHang ctgh = new ChiTietGioHang();
				
				
			    ctgh.setGioHang1(gioHang);
			    ctgh.setSanPham1(timtheoma);
//			    ctgh.setSize(timtheoma.getSize());
//			    ctgh.setMau(timtheoma.getMau());
			    ctgh.setGia(timtheoma.getGia());
			    ctgh.setSoLuong(1);
			    ctgh.setMau(mau);
			    ctgh.setSize(size);
			    chiTietGioHangDao.save(ctgh);
				
//				System.out.println(gioHang);
//				ctgh.setGioHang1(gioHang);
////				ctgh.setSanPham1(timtheoma.getMaSanPham());
//				chiTietGioHangDao.save(ctgh);
				
//				List<SanPham> showtheoten = phanLoaiDao.findByTenSanPham(showtheoma.getTenSanPham());
//				model.addAttribute("showop", showtheoten);
//				List<SanPham> timmau = dao.findByMaSanPham(showtheoma.getMaSanPham());
//				model.addAttribute("showmau", timmau);
			}
		} catch (Exception e) {
			thongbaochitietsanpham = "<<<  Vui lòng chọn đầy đủ size và màu!  >>>";
			return "redirect:/chitietsanpham/"+masanpham;
		}
		
		
	    return "redirect:/cart_products";	
	 }
	
	
	
	@GetMapping("formaonam")
	public String formaonam(Model model) {
//		Pageable pageable = PageRequest.of(m.orElse(0), 5);
//		Page<SanPham> itemsPage = dao.findSanPhamAoNam(pageable);
//		
//		SanPham item = new SanPham();
//		model.addAttribute("item", item);
//
//		List<SanPham> items = itemsPage.getContent();
//		model.addAttribute("items", items);

		List<SanPham> formaonam = dao.findSanPhamByLoaiNam();
		model.addAttribute("formaonam", formaonam);
		return "/products/form_aonam";
	}


	@GetMapping("aothunnam")
	public String aothunnam(Model model) {
		
		List<SanPham> aothunnam = dao.findSanPhamAoThunNam();
		model.addAttribute("aothunnam", aothunnam);
		return "/products/ao_thunnam";
	}

	@GetMapping("aopolonam")
	public String aopolonam(Model model) {
		List<SanPham> aopolonam = dao.findSanPhamAoPoloNam();
		model.addAttribute("aopolonam", aopolonam);
		return "/products/aopolonam";
	}

	@GetMapping("aosominam")
	public String aosominam(Model model) {
//		List<SanPham> aosominam = dao.findSanPhamByLoaiAoSoMiNam();
//		model.addAttribute("aosominam", aosominam);
		List<SanPham> aosominam = dao.findSanPhamByLoaiAoSoMiNam();
		model.addAttribute("aosominam", aosominam);
		return "/products/aosominam";
	}

	@GetMapping("aolennam")
	public String aolennam(Model model) {
		List<SanPham> aolennam = dao.findSanPhamAolenNam();
		model.addAttribute("aolennam", aolennam);

		return "/products/aolennam";
	}

	@GetMapping("aohoodienam")
	public String aohoodienam(Model model) {
		List<SanPham> aohoodienam = dao.findSanPhamAoHoodieNam();
		model.addAttribute("aohoodienam", aohoodienam);
		return "/products/aohoodienam";
	}

//	form nữ
	@GetMapping("formaonu")
	public String formaonu(Model model) {
		List<SanPham> formaonu = dao.findSanPhamByLoaiNu();
		model.addAttribute("formaonu", formaonu);
		return "/products/form_aonu";
	}
	
	@RequestMapping("aothunu")
	public String aothunu(Model model) {

		return "/products/ao_thunnu";
	}

	@RequestMapping("aothunu/{sanpham}")
	public String aothunu(Model model, @PathVariable("sanpham") String loai) {
		List<SanPham> aothunnu = dao.findSanPhamAoThunNu();
		model.addAttribute("aothunnu", aothunnu);
		System.out.println(loai);
		return "/products/ao_thunnu";
	}


	@GetMapping("aosominu")
	public String aosominu() {

		return "/products/aosominu";
	}

	@GetMapping("aobra")
	public String aobra(Model model) {
//		List<SanPham> aobra = dao.finSanPhamNuBra();
//		model.addAttribute("aobra", aobra);
		List<SanPham> aobra = dao.finSanPhamNuBra();
		model.addAttribute("aobra", aobra);
		return "/products/aobranu";
	}

	@GetMapping("aolennu")
	public String aolennu() {
		return "/products/aolennu";
	}

	@GetMapping("aohoodienu")
	public String aohoodienu() {
		return "/products/aohoodienu";
	}

	@GetMapping("/mota/{maSanPham}")
	public String mota(Model model,  @PathVariable("maSanPham") String maSanPham) {
	
		SanPham sanPham = dao.findById(Integer.parseInt(maSanPham)).get();
		model.addAttribute("sanPham", sanPham);
		
		return "/products/mota";
	}
	
//	@RequestMapping("info")
//	public String info() {
//		return "/info";
//	}
	
	@RequestMapping("info")
	public String index(Model model, TaiKhoan taikhoan, HttpServletRequest req) {
		try {
			String check = session.get("username");
			System.out.println(check);
			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(check);
			model.addAttribute("thongtintaikhoan", tk);
			
			TaiKhoan item = new TaiKhoan();
			model.addAttribute("item", item);
			List<TaiKhoan> items = taikhoanDao.findAll();
			model.addAttribute("items", items);
			
			
			if (tk.isQuyen()==true) {
				req.getSession().setAttribute("username", "");
//				sessionService.set("username", untk);
				
			}
			else if (tk.isQuyen()==false) {
				
					
//				sessionService.set("username", "");
			}
		} catch (Exception e) {
			return "redirect:/trangDangNhap";
		}
		
		return "/info";
	}

}