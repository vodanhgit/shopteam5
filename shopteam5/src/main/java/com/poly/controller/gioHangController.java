package com.poly.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.entities.ChiTietGioHang;
import com.poly.entities.GioHang;
import com.poly.entities.HoaDon;
import com.poly.entities.HoaDonChiTiet;
import com.poly.entities.TaiKhoan;
import com.poly.interfaces.ShoppingCartService;
import com.poly.reponstory.ChiTietGioHangDao;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;
@Controller
public class gioHangController {
	
		@Autowired
		private ChiTietGioHangDao chiTietGioHangDao;
		
		@Autowired 
		HoaDonDao hoaDonDao;
		
		@Autowired
		GioHangDao gioHangDao;
		
		@Autowired 
		HoaDonChiTietDao hoaDonChiTietDao;
		
		@Autowired 
		TaiKhoanDao taikhoanDao;
		
		@Autowired 
		SessionService sessionservice;
		
		@Autowired
		ShoppingCartService cart;
		
		int idgiohang = 1;
		@GetMapping("cart")
		public String index() {
			return "cart";
		}
		
		@GetMapping("cart_products")
		public String cart_products(Model model) {
//			ChiTietGioHang itemchitiet = new ChiTietGioHang();
			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
			
			int tong = 0;
		    for (ChiTietGioHang ctgh : itemsProducts) {
		        tong += ctgh.getSoLuong() * ctgh.getGia();
		        model.addAttribute("tongtien",tong);
		    }
			model.addAttribute("itemsProduct",itemsProducts);

			model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
			return "cart";
		}
		
		@RequestMapping("cart_visit")
		public String cart_visit(Model model) throws IllegalStateException, IOException{
			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
			int tong = 0;
		    for (ChiTietGioHang ctgh : itemsProducts) {
		        tong += ctgh.getSoLuong() * ctgh.getGia();
		        model.addAttribute("tongtien",tong);
		    }
		    model.addAttribute("itemsProductvisit",itemsProducts);
			model.addAttribute("cart", "WEB-INF/accers/cart_visit");
			return "cart";
		}
		
		@RequestMapping("cart_update/{id}")
		public String update(Model model, @PathVariable("id") Integer id, @RequestParam("qty") Integer soLuong,@RequestParam("idgio") Integer gioHangId)
				throws IllegalStateException, IOException {
//			cart.update(id, soLuong);
				ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
				item.setId_ChiTiet(id);
				item.setSoLuong(soLuong);
				item.getGioHang1().setID_Gio(gioHangId); 
				chiTietGioHangDao.save(item);
			return "redirect:/cart_products";
		}
		
		@RequestMapping("cart_detele/{id}")
		public String detele(@PathVariable("id") Integer id)
				throws IllegalStateException, IOException {
//			cart.update(id, soLuong);
			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
			
			item.setId_ChiTiet(id);
			chiTietGioHangDao.deleteById(id);
			return "redirect:/cart_products";
		}
		
		@RequestMapping("hd_them/{id}")
		public String themHD(@PathVariable("id") Integer id)
				throws IllegalStateException, IOException {
//			cart.update(id, soLuong);
			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
			
			item.setId_ChiTiet(id);
			chiTietGioHangDao.deleteById(id);
			return "redirect:/cart_products";
		}

//		@PostMapping("/cart/checkout")
//		public String checkoutCart(@RequestParam("selectedItems") String selectedItemsJson,
//		                           @RequestParam("totalPrice") String totalPrice) {
//		  // Chuyển đổi chuỗi JSON thành danh sách các sản phẩm được chọn
//		  List<ChiTietGioHang> selectedItems = new ArrayList<>();
//		  
//		  try {
//		    selectedItems = new ObjectMapper().readValue(selectedItemsJson, new TypeReference<List<ChiTietGioHang>>() {});
//		  } catch (JsonProcessingException e) {
//		    e.printStackTrace();
//		  }
//		  System.out.println(selectedItems);
//		  // Xử lý đơn hàng và thanh toán
//		  
//		  return "redirect:/cart_visit";
//		}	
////		@PostMapping("/cart/checkout")
////		  public String processCheckout(@RequestParam("selectedItems") String selectedItems,
////		                                @RequestParam("totalPrice") String totalPrice) {
////		    // Xử lý thông tin đơn hàng ở đây
////		    System.out.println("Sản phẩm được chọn: " + selectedItems);
////		    System.out.println("Tổng giá: " + totalPrice);
////		    
////		    // Redirect hoặc trả về trang kết quả, hoặc thực hiện các xử lý khác
////
////		    return "redirect:/cart_visit";
////		  }
//		@PostMapping("thanhtoan")
//		public String thanhtoan(HoaDon themhd,@RequestParam("tinh_diachi") String tinh,
//		                         @RequestParam("huyen_diachi") String huyen,
//		                          @RequestParam("xa_diachi") String xa,
//		                           @RequestParam("ghichu") String ghichu) throws IllegalStateException, IOException{
//			LocalDate currentDate = LocalDate.now();
//			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//	        String formattedDate = currentDate.format(formatter);
//	        String diachi = xa+", "+huyen+", "+tinh;
//	        String trangthai = "Chờ xét duyệt";
//	        int tong = 0; 
//	        TaiKhoan taiKhoan= taikhoanDao.findById(1).get();
//	        sessionservice.set("taikhoan", taiKhoan); 
////				List<ChiTietGioHang> chitietgiohangs = new ArrayList<>();
//	        	
//				List<ChiTietGioHang> chitietgiohangs = chiTietGioHangDao.findAll();
//				
//	        	themhd.setDiaChi(diachi);
//				themhd.setNgayDatHang(formattedDate);
//				themhd.setTrangThai(trangthai);
//				themhd.setTaiKhoan(taiKhoan);
//				themhd.setTongTien(tong);
//				themhd.setGhiChu(ghichu);	
//				hoaDonDao.save(themhd);
//				
//				HoaDonChiTiet themhdct = new HoaDonChiTiet();
//				for (ChiTietGioHang ctgh: chitietgiohangs) {
//					System.out.println(themhdct.getMaHoaDonChiTiet());
//			        themhdct.setHoaDon(themhd);
//			        themhdct.setSanPham2(ctgh.getSanPham1());
//					themhdct.setDonGia(ctgh.getGia());
//					themhdct.setSoLuong(ctgh.getSoLuong());
//					themhdct.setThanhTien(ctgh.getSoLuong()*ctgh.getGia());																																																																																					
//					hoaDonChiTietDao.save(themhdct);
//					
//					System.out.println(themhdct.getMaHoaDonChiTiet());
//				}
//				
////				for (ChiTietGioHang machitiet: chitietgiohangs) {
////					int machitietthanhtoan = machitiet.getId_ChiTiet();	
////					tong += machitiet.getSoLuong() * machitiet.getGia();
////					hoadonnew.setMaHoaDon(hoadon.size()+1);
////					themhd.setDiaChi(diachi);
////					themhd.setNgayDatHang(formattedDate);
////					themhd.setTrangThai(trangthai);
////					themhd.setTaiKhoan(taiKhoan);
////					themhd.setTongTien(tong);
////					themhd.setGhiChu(ghichu);
////					HoaDon savedHoaDon = hoaDonDao.save(themhd);
////					System.out.println(savedHoaDon.getMaHoaDon());
////					mahoadonsave = savedHoaDon.getMaHoaDon();
////					}
////				
//				
//				
//				
//				
////	        	HoaDon hoadonsave= hoaDonDao.findById(mahoadonsave).get();
////				for (ChiTietGioHang machitiet: chitietgiohangs) {
////					int machitietthanhtoan = machitiet.getId_ChiTiet();	
////					ChiTietGioHang ctgh = chiTietGioHangDao.findById(machitietthanhtoan).get();
////			        themhdct.setHoaDon(hoadonsave);
////			        themhdct.setSanPham2(ctgh.getSanPham1());
////					themhdct.setDonGia(ctgh.getGia());
////					themhdct.setSoLuong(ctgh.getSoLuong());
////					themhdct.setThanhTien(ctgh.getSoLuong()*ctgh.getGia());
////																																																																																																		
////					hoaDonChiTietDao.save(themhdct);
////				} 
//			return "redirect:/cart_visit";
//		}	
		@PostMapping("/cart/checkout")
		public String checkoutCart(@RequestParam("selectedItems") String selectedItemsJson,
		                           @RequestParam("totalPrice") String totalPrice) {
		  // Chuyển đổi chuỗi JSON thành danh sách các sản phẩm được chọn
		  List<ChiTietGioHang> selectedItems = new ArrayList<>();
		  
		  try {
		    selectedItems = new ObjectMapper().readValue(selectedItemsJson, new TypeReference<List<ChiTietGioHang>>() {});
		  } catch (JsonProcessingException e) {
		    e.printStackTrace();
		  }
		  System.out.println(selectedItems);
		  // Xử lý đơn hàng và thanh toán
		  
		  return "redirect:/cart_visit";
		}	
//		@PostMapping("/cart/checkout")
//		  public String processCheckout(@RequestParam("selectedItems") String selectedItems,
//		                                @RequestParam("totalPrice") String totalPrice) {
//		    // Xử lý thông tin đơn hàng ở đây
//		    System.out.println("Sản phẩm được chọn: " + selectedItems);
//		    System.out.println("Tổng giá: " + totalPrice);
//		    
//		    // Redirect hoặc trả về trang kết quả, hoặc thực hiện các xử lý khác
//
//		    return "redirect:/cart_visit";
//		  }
		@PostMapping("thanhtoan")
		public String thanhtoan(HoaDon themhd,@RequestParam("tinh_diachi") String tinh,
		                         @RequestParam("huyen_diachi") String huyen,
		                          @RequestParam("xa_diachi") String xa,
		                           @RequestParam("ghichu") String ghichu) throws IllegalStateException, IOException{
			LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        String formattedDate = currentDate.format(formatter);
	        String diachi = xa+", "+huyen+", "+tinh;
	        String trangthai = "Chờ xét duyệt";
	        int tong = 0; 
	        TaiKhoan taiKhoan= taikhoanDao.findById(1).get();
	        sessionservice.set("taikhoan", taiKhoan); 	        	
				List<ChiTietGioHang> chitietgiohangs = chiTietGioHangDao.findAll();
				
	        	themhd.setDiaChi(diachi);
				themhd.setNgayDatHang(formattedDate);
				themhd.setTrangThai(trangthai);
				themhd.setTaiKhoan(taiKhoan);
				themhd.setTongTien(tong);
				themhd.setGhiChu(ghichu);	
				hoaDonDao.save(themhd);
				
				for (ChiTietGioHang ctgh: chitietgiohangs) {
					HoaDonChiTiet themhdct = new HoaDonChiTiet();
			        themhdct.setHoaDon(themhd);
			        themhdct.setSanPham2(ctgh.getSanPham1());
					themhdct.setDonGia(ctgh.getGia());
					themhdct.setSoLuong(ctgh.getSoLuong());
					themhdct.setThanhTien(ctgh.getSoLuong()*ctgh.getGia());																																																																																					
					hoaDonChiTietDao.save(themhdct);
					chiTietGioHangDao.deleteById(ctgh.getId_ChiTiet());
				}

			return "redirect:/cart_visit";
		}
}
