package com.poly.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		@Autowired
		SessionService sessionService;
		@GetMapping("cart")
		public String index() {
			return "cart";
		}
//		String myValue = sessionService.get("username");

		
		@GetMapping("cart_products")
		public String cart_products(Model model, @RequestParam("p")Optional<Integer> p) {
				String myValue = sessionService.get("username");
				TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
				int mataikhoan = tk.getMaTaiKhoan();
				GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
				int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
				List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);

				int tongcheck=0;
				int tong = 0;
			    for (ChiTietGioHang ctgh : itemsProducts) {
			        tong += ctgh.getSoLuong() * ctgh.getGia();
			        tongcheck+= tong;
			        model.addAttribute("tongtien",tong);
			    }
			    if (tongcheck==0) {
			    	return "redirect:/cart_thongbaotrong";
				}
//				model.addAttribute("itemsProduct",itemsProducts);
				Pageable pageable = PageRequest.of(p.orElse(0), 4);
				Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
				model.addAttribute("itemsProduct", page);
				model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
//			} catch (Exception e) {
//				return "redirect:/cart_thongbaotrong";
//			}
//			
			return "cart";
		}
//		
//		@RequestMapping("cart_visit")
//		public String cart_visit(Model model, @RequestParam("p")Optional<Integer> p) throws IllegalStateException, IOException{
//			String myValue = sessionService.get("username");
//			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
//			int mataikhoan = tk.getMaTaiKhoan(); 
//			GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
//			int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
//			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
////			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
//			System.out.println(itemsProducts);
//			int ma=0;
//			int tong = 0;
//		    for (ChiTietGioHang ctgh : itemsProducts) {
//		    	ma = ctgh.getId_ChiTiet();
//		        tong += ctgh.getSoLuong() * ctgh.getGia();
//		        model.addAttribute("tongtien",tong);
//		    }
//		    
//		    if (ma==0) {
//		    	return "redirect:/cart_products";
//			}
//		    else {
//		    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
//				Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
//				model.addAttribute("itemsProductvisit", page);
////		    	model.addAttribute("itemsProductvisit",itemsProducts);
//		    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
//		    }
//			return "cart";
//		}
//		@RequestMapping("cart_thongbaotrong")
//		public String cart_visit(Model model){
//
//		    	model.addAttribute("cart", "WEB-INF/accers/cart_thongbaotrong");
//			return "cart";
//		}
		@RequestMapping("cart_update/{id}")
		public String update(Model model, @PathVariable("id") Integer id, @RequestParam("qty") Integer soLuong,@RequestParam("idgio") Integer gioHangId)
				throws IllegalStateException, IOException {
			
			String myValue = sessionService.get("username");
			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
			int mataikhoan = tk.getMaTaiKhoan();
			GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
			int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
			
			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//			cart.update(id, soLuong);
				ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
				item.setId_ChiTiet(id);
				item.setSoLuong(soLuong);
				item.getGioHang1().setID_Gio(idgiohangtheotaikhoan);
				chiTietGioHangDao.save(item);
			return "redirect:/cart_products";
		}
//		
		@RequestMapping("cart_detele/{id}")
		public String detele(@PathVariable("id") Integer id)
				throws IllegalStateException, IOException {
//			cart.update(id, soLuong);
			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
			
			item.setId_ChiTiet(id);
			chiTietGioHangDao.deleteById(id);
			return "redirect:/cart_products";
		}
		
//		@RequestMapping("hd_them/{id}")
//		public String themHD(@PathVariable("id") Integer id)
//				throws IllegalStateException, IOException {
////			cart.update(id, soLuong);
//			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
//			
//			item.setId_ChiTiet(id);
//			chiTietGioHangDao.deleteById(id);
//			return "redirect:/cart_products";
//		}
//
//	
////		@PostMapping("/cart/checkout")
////		public String checkoutCart(@RequestParam("selectedItems") String selectedItemsJson,
////		                           @RequestParam("totalPrice") String totalPrice) {
////		  // Chuyển đổi chuỗi JSON thành danh sách các sản phẩm được chọn
////		  List<ChiTietGioHang> selectedItems = new ArrayList<>();
////		  
////		  try {
////		    selectedItems = new ObjectMapper().readValue(selectedItemsJson, new TypeReference<List<ChiTietGioHang>>() {});
////		  } catch (JsonProcessingException e) {
////		    e.printStackTrace();
////		  }
////		  System.out.println(selectedItems);
////		  
////		  return "redirect:/cart_visit";
////		}	
//
//		@PostMapping("thanhtoan")
//		public String thanhtoan(HoaDon themhd,@RequestParam("tinh_diachi") String tinh,
//		                         @RequestParam("huyen_diachi") String huyen,
//		                          @RequestParam("xa_diachi") String xa,
//		                          @RequestParam("apsonha_diachi") String apsonha,
//		                           @RequestParam("ghichu") String ghichu) throws IllegalStateException, IOException{
//			String myValue = sessionService.get("username");
//			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
//			int mataikhoan = tk.getMaTaiKhoan();
//			GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
//			int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
//			
//			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//			LocalDate currentDate = LocalDate.now();
//			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//	        String formattedDate = currentDate.format(formatter);
//	        String diachi = apsonha+", "+xa+", "+huyen+", "+tinh;
//	        String trangthai = "Chờ xét duyệt";
//	        int tong = 0; 
//	        int ma;
//	        TaiKhoan taiKhoan= taikhoanDao.findById(1).get();
//	        sessionservice.set("taikhoan", taiKhoan); 	        	
//				List<ChiTietGioHang> chitietgiohangs = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//				
//	        	themhd.setDiaChi(diachi);
//				themhd.setNgayDatHang(formattedDate);
//				themhd.setTrangThai(trangthai);
//				themhd.setTaiKhoan(taiKhoan);
//				 for (ChiTietGioHang ctgh : chitietgiohangs) {
//				    	ma = ctgh.getId_ChiTiet();
//				        tong += ctgh.getSoLuong() * ctgh.getGia();
//				        themhd.setTongTien(tong);
//				    }
//				
//				themhd.setGhiChu(ghichu);	
//				hoaDonDao.save(themhd);
//				
//				for (ChiTietGioHang ctgh: chitietgiohangs) {
//					HoaDonChiTiet themhdct = new HoaDonChiTiet();
//			        themhdct.setHoaDon(themhd);
//			        themhdct.setSanPham2(ctgh.getSanPham1());
//					themhdct.setDonGia(ctgh.getGia());
//					themhdct.setSoLuong(ctgh.getSoLuong());
//					themhdct.setThanhTien(ctgh.getSoLuong()*ctgh.getGia());																																																																																					
//					hoaDonChiTietDao.save(themhdct);
//					chiTietGioHangDao.deleteById(ctgh.getId_ChiTiet());
//				}
//
//			return "redirect:/admin/management";
//		}
//		
}
