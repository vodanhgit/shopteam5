package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.HoaDon;
import com.poly.entities.HoaDonChiTiet;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.SanPhamDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;

@Controller
public class AdminController {

	@Autowired
	TaiKhoanDao taikhoandao;

	@Autowired
	SanPhamDao spdao;

	@Autowired
	HoaDonDao hoadondao;

	@Autowired
	HoaDonChiTietDao hoadonchitietdao;

	@Autowired
	ServletContext app;
	
	@Autowired
	SessionService session;

	public String dk() {
		return "forward:/checkout";
	}

	int ma = 0;

	@GetMapping("/admin/index")
	public String index(Model model, TaiKhoan taikhoan, HttpServletRequest req) {
		if (ma == 1) {
			model.addAttribute("huy", "Hủy");
			model.addAttribute("ten", null);
		} else {
			model.addAttribute("huy", null);
			model.addAttribute("ten", "readonly");
		}
		String check = session.get("username");
		System.out.println(check);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		model.addAttribute("thongtintaikhoan", tk);

		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();

		model.addAttribute("items", items);
		String untk = check;
		if (tk.isQuyen() == true) {
			req.getSession().setAttribute("quanly", untk);
			req.getSession().setAttribute("user", null);
		} else {
			req.getSession().setAttribute("quanly", null);
			req.getSession().setAttribute("user", untk);
		}

		return "admin/index";
	}
	
	@RequestMapping("/admin/update-information")
	public String capnhap(@RequestParam("hoTenNguoiDung") String hoTenNguoiDung, @RequestParam("email") String email,
			@RequestParam("soDienThoai") String soDienThoai, @RequestParam("gioiTinh") Boolean gioiTinh,
			@RequestParam("ngaySinh") String ngaysinh, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
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

		if (filename.isEmpty()) {
			taikhoan.setHinhAnh("user.png");
		} else {

			File file = new File(app.getRealPath("/images/" + filename));
			img.transferTo(file);
			taikhoan.setHinhAnh(filename);
		}
		taikhoandao.save(taikhoan);
		ma = 0;
		
		return "redirect:/admin/index";
	}

	@GetMapping("/admin/thongke")
	public String thongKe(Model model) {
		return "admin/thongke";
	}

	@RequestMapping("thongke")
	public String thongke(Model model) {
	    model.addAttribute("chontrangthai", "Chọn trạng thái");
	    model.addAttribute("chontrangthai_sosanh", "Chọn trạng thái");
	    return "/admin/thongke/thongke";
	}

	@RequestMapping("/admin/thongkedoanhthu")
	public String thongkedoanhthu(Model model,
	        @RequestParam("tungay") String tungay, @RequestParam("denngay") String denngay,
	        @RequestParam("trangthai") String trangthai, @RequestParam("tungay_sosanh") String tungay_sosanh,
	        @RequestParam("denngay_sosanh") String denngay_sosanh, @RequestParam("trangthai_sosanh") String trangthai_sosanh) {

	    // Các phần code xử lý doanh thu và các thuộc tính khác tôi giữ nguyên

		int sohoadon = 0;
		int tongsoluongsanpham = 0;
		int tongtien = 0;
		String ngaydoanhthucaonhat = "";
		int tongdoanhthucaonhat = 0;
		List<Object[]> topProducts = spdao.findTop5BestSellingProductsByCategory();
		model.addAttribute("topProducts", topProducts);
		List<HoaDon> hoaDonList = hoadondao.thongKeHoaDonTheoNgayTT(tungay, denngay, trangthai);
		List<HoaDonChiTiet> hoaDonDTOList = new ArrayList<>();

		for (HoaDon hoaDon : hoaDonList) {
			Integer tongSoLuong = hoadonchitietdao.tinhTongSoLuongTheoMaHoaDon(hoaDon.getMaHoaDon());

			// Tạo một đối tượng HoaDonDTO để lưu thông tin hóa đơn và tổng số lượng
			HoaDonChiTiet hoaDonDTO = new HoaDonChiTiet();
			hoaDonDTO.setHoaDon(hoaDon);
			hoaDonDTO.setSoLuong(tongSoLuong);

			// Thêm hoaDonDTO vào danh sách hoaDonDTOList
			hoaDonDTOList.add(hoaDonDTO);
			sohoadon++;
			tongsoluongsanpham += tongSoLuong;
			tongtien += hoaDon.getTongTien();
			if (hoaDon.getTongTien() > tongdoanhthucaonhat) {
				tongdoanhthucaonhat = hoaDon.getTongTien();
				ngaydoanhthucaonhat = hoaDon.getNgayDatHang();
			}

		}

		int sohoadon_sosanh = 0;
		int tongsoluongsanpham_sosanh = 0;
		int tongtien_sosanh = 0;
		String ngaydoanhthucaonhat_sosanh = "";
		int tongdoanhthucaonhat_sosanh = 0;
		List<Object[]> topProducts_sosanh = spdao.findTop5BestSellingProductsByCategory();
		model.addAttribute("topProducts_sosanh", topProducts_sosanh);
		List<HoaDon> hoaDonList_sosanh = hoadondao.thongKeHoaDonTheoNgayTT(tungay_sosanh, denngay_sosanh,
				trangthai_sosanh);
		List<HoaDonChiTiet> hoaDonDTOList_sosanh = new ArrayList<>();

		for (HoaDon hoaDon_sosanh : hoaDonList_sosanh) {
			Integer tongSoLuong_sosanh = hoadonchitietdao.tinhTongSoLuongTheoMaHoaDon(hoaDon_sosanh.getMaHoaDon());

			// Tạo một đối tượng HoaDonDTO để lưu thông tin hóa đơn và tổng số lượng
			HoaDonChiTiet hoaDonDTO_sosanh = new HoaDonChiTiet();
			hoaDonDTO_sosanh.setHoaDon(hoaDon_sosanh);
			hoaDonDTO_sosanh.setSoLuong(tongSoLuong_sosanh);

			// Thêm hoaDonDTO vào danh sách hoaDonDTOList
			hoaDonDTOList_sosanh.add(hoaDonDTO_sosanh);
			sohoadon_sosanh++;
			tongsoluongsanpham_sosanh += tongSoLuong_sosanh;
			tongtien_sosanh += hoaDon_sosanh.getTongTien();
			if (hoaDon_sosanh.getTongTien() > tongdoanhthucaonhat_sosanh) {
				tongdoanhthucaonhat_sosanh = hoaDon_sosanh.getTongTien();
				ngaydoanhthucaonhat_sosanh = hoaDon_sosanh.getNgayDatHang();
			}

		}

	    // Thêm những thuộc tính cần thiết vào Model
	    model.addAttribute("tongtien", tongtien);
	    model.addAttribute("ngaydoanhthucaonhat", ngaydoanhthucaonhat);
	    model.addAttribute("tongtiendoanhthucaonhat", tongdoanhthucaonhat);
	    model.addAttribute("sohoadon", sohoadon);
	    model.addAttribute("tongsoluongsanpham", tongsoluongsanpham);
	    model.addAttribute("hoaDonDTOList", hoaDonDTOList);
	    model.addAttribute("tongtien_sosanh", tongtien_sosanh);
	    model.addAttribute("ngaydoanhthucaonhat_sosanh", ngaydoanhthucaonhat_sosanh);
	    model.addAttribute("tongtiendoanhthucaonhat_sosanh", tongdoanhthucaonhat_sosanh);
	    model.addAttribute("sohoadon_sosanh", sohoadon_sosanh);
	    model.addAttribute("tongsoluongsanpham_sosanh", tongsoluongsanpham_sosanh);
	    model.addAttribute("hoaDonDTOList_sosanh", hoaDonDTOList_sosanh);
	    model.addAttribute("chontrangthai", trangthai);
	    model.addAttribute("chontrangthai_sosanh", trangthai_sosanh);

	    if (tongsoluongsanpham > tongsoluongsanpham_sosanh) {
	        int tanggiamsanpham = tongsoluongsanpham - tongsoluongsanpham_sosanh;
	        model.addAttribute("tanggiamsanpham", "Tăng " + tanggiamsanpham);
	    } else if (tongsoluongsanpham < tongsoluongsanpham_sosanh) {
	        int tanggiamsanpham = tongsoluongsanpham_sosanh - tongsoluongsanpham;
	        model.addAttribute("tanggiamsanpham", "Giảm " + tanggiamsanpham);
	    }

	    return "/admin/thongke/thongke";
	}
	
	@ModelAttribute("trangthai_sosanh")
	public Map<String, String> getTrangThaiSoSanh() {
	    Map<String, String> map = new HashMap<>();
	    map.put("wait", "Chờ xét duyệt");
	    map.put("approved", "Đã xét duyệt");
	    map.put("cancel", "Xét duyệt thất bại");
	    map.put("delivery", "Đang giao hàng");
	    map.put("delivered", "Đã giao hàng");
	    return map;
	}

	@ModelAttribute("trangthai")
	public Map<String, String> getTrangThai() {
	    Map<String, String> map = new HashMap<>();
	    map.put("wait", "Chờ xét duyệt");
	    map.put("approved", "Đã xét duyệt");
	    map.put("cancel", "Xét duyệt thất bại");
	    map.put("delivery", "Đang giao hàng");
	    map.put("delivered", "Đã giao hàng");
	    return map;
	}

//	@ModelAttribute("trangthai_sosanh")
//	public List<String> getTrangThaiSoSanh() {
//		List<String> trangthai_sosanh = new ArrayList<>();
//	    trangthai_sosanh.add("Chờ xét duyệt");
//	    trangthai_sosanh.add("Đã xét duyệt");
//	    trangthai_sosanh.add("Xét duyệt thất bại");
//	    trangthai_sosanh.add("Đang giao hàng");
//	    trangthai_sosanh.add("Đã giao hàng");
//	    return trangthai_sosanh;
//	}
//
//	@ModelAttribute("trangthai")
//	public List<String> getTrangThai() {
//		List<String> trangthai = new ArrayList<>();
//	    trangthai.add("Chờ xét duyệt");
//	    trangthai.add("Đã xét duyệt");
//	    trangthai.add("Xét duyệt thất bại");
//	    trangthai.add("Đang giao hàng");
//	    trangthai.add("Đã giao hàng");
//	    return trangthai;
//	}

}
