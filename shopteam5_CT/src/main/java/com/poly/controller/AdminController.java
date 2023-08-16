package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.constant.SessionAttr;
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
		//Kiểm tra tài khoản đang đăng nhập có phải admin hay không
		String account = session.get(SessionAttr.CURRENT_USER);

		TaiKhoan chkAccount = taikhoandao.findByTenTaiKhoanThongThuong(account);

		if (!chkAccount.isQuyen()) {
			return "home/error404";
		}

		String check = session.get(SessionAttr.Admin);
		System.out.println(check);
		TaiKhoan tk = taikhoandao.findByTenTaiKhoanThongThuong(check);
		model.addAttribute("thongtintaikhoan", tk);

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
		String account = session.get(SessionAttr.CURRENT_USER);

		TaiKhoan chkAccount = taikhoandao.findByTenTaiKhoanThongThuong(account);

		if (!chkAccount.isQuyen()) {
			return "home/error404";
		}
		return "admin/thongke";
	}

	@RequestMapping("/admin/thongkedoanhthu")
	public String thongkedoanhthu(Model model, @RequestParam("tungay") String tungay,
			@RequestParam("denngay") String denngay, @RequestParam("trangthai") String trangthai) {

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

		// Thêm những thuộc tính cần thiết vào Model
		model.addAttribute("tongtien", tongtien);
		model.addAttribute("ngaydoanhthucaonhat", ngaydoanhthucaonhat);
		model.addAttribute("tongtiendoanhthucaonhat", tongdoanhthucaonhat);
		model.addAttribute("sohoadon", sohoadon);
		model.addAttribute("tongsoluongsanpham", tongsoluongsanpham);
		model.addAttribute("hoaDonDTOList", hoaDonDTOList);

		return "admin/thongke";
	}

	@ModelAttribute("trangthai")
	public List<String> getTrangThai() {
		List<String> trangthai = new ArrayList<>();
		trangthai.add("Chờ xét duyệt");
		trangthai.add("Đã xét duyệt");
		trangthai.add("Xét duyệt thất bại");
		trangthai.add("Đang giao hàng");
		trangthai.add("Đã giao hàng");
		return trangthai;
	}

}
