package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
public class thongtinnguoidung {
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

	int ma = 0;
	@RequestMapping("trangchuauser")
	public String thongtintaikhoan_user(Model model, TaiKhoan taikhoan, HttpServletRequest req) {
//		try {
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

		model.addAttribute("cart", "WEB-INF/accers/thongtintaikhoan_user");
		return "cart";
	}
	@RequestMapping("capnhat")
	public String capnhap(Model model, @RequestParam("hoTenNguoiDung") String hoTenNguoiDung, @RequestParam("email") String email,
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
		
		return "redirect:/trangchuauser";
	}
	@RequestMapping("sua")
	public String sua() {
		ma = 1;
		return "redirect:/trangchuauser";
	}

	@RequestMapping("huy")
	public String huy() {
		ma = 0;
		return "redirect:/trangchuauser";
	}
}
