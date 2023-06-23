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
import com.poly.entities.KhuyenMai;
import com.poly.entities.PhanLoai;
import com.poly.entities.SanPham;
import com.poly.entities.TaiKhoan;
import com.poly.interfaces.ShoppingCartService;
import com.poly.reponstory.ChiTietGioHangDao;
import com.poly.reponstory.GioHangDao;
import com.poly.reponstory.HoaDonChiTietDao;
import com.poly.reponstory.HoaDonDao;
import com.poly.reponstory.KhuyenMaiDao;
import com.poly.reponstory.PhanLoaiDao;
import com.poly.reponstory.TaiKhoanDao;
import com.poly.service.SessionService;
@Controller
public class gioHangController {
	
		@Autowired
		private ChiTietGioHangDao chiTietGioHangDao;
		
		@Autowired 
		HoaDonDao hoaDonDao;
		
		@Autowired 
		PhanLoaiDao phanLoaiDao;
		
		@Autowired
		GioHangDao gioHangDao;
		
		@Autowired 
		HoaDonChiTietDao hoaDonChiTietDao;
		
		@Autowired 
		TaiKhoanDao taikhoanDao;
		
		@Autowired
		KhuyenMaiDao khuyenmaiDao;
		
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

		String thongbaosoluong;
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
			    	SanPham sanPham = ctgh.getSanPham1();
					int ma = sanPham.getMaSanPham();
					PhanLoai phanloai = phanLoaiDao.findByMaSanPhamAndSizeAndMau(ma, ctgh.getSize(), ctgh.getMau());
					if (phanloai.getSoLuong()<ctgh.getSoLuong()) {
						chiTietGioHangDao.delete(ctgh);;
					}
					else {
						tong += ctgh.getSoLuong() * ctgh.getGia();
				        tongcheck+= tong;
				        model.addAttribute("tongtien",tong);  
					}
			        					
			    }
			    if (tongcheck==0) {
			    	return "redirect:/cart_thongbaotrong";
				}
//				model.addAttribute("itemsProduct",itemsProducts);
				Pageable pageable = PageRequest.of(p.orElse(0), 4);
				Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
				model.addAttribute("itemsProduct", page);
				model.addAttribute("thongbaosoluong", thongbaosoluong);
				model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
//			} catch (Exception e) {
//				return "redirect:/cart_thongbaotrong";
//			}
//			
			return "cart";
		}
//		
		@RequestMapping("cart_visit")
		public String cart_visit(Model model, @RequestParam("p")Optional<Integer> p) throws IllegalStateException, IOException{
			String myValue = sessionService.get("username");
			TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
			int mataikhoan = tk.getMaTaiKhoan(); 
			GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
			int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
			int ma=0;
			int tong = 0;
		    for (ChiTietGioHang ctgh : itemsProducts) {
		    	ma = ctgh.getId_ChiTiet();
		        tong += ctgh.getSoLuong() * ctgh.getGia();
		        model.addAttribute("tongtien",tong);
		    }
		    
		    if (ma==0) {
		    	return "redirect:/cart_products";
			}
		    else {
		    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
				Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
				model.addAttribute("itemsProductvisit", page);
//		    	model.addAttribute("itemsProductvisit",itemsProducts);
		    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
		    }
			return "cart";
		}
		@RequestMapping("cart_thongbaotrong")
		public String cart_visit(Model model){

		    	model.addAttribute("cart", "WEB-INF/accers/cart_thongbaotrong");
			return "cart";
		}
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
				SanPham sanPham = item.getSanPham1();
				int ma = sanPham.getMaSanPham();
				PhanLoai phanloai = phanLoaiDao.findByMaSanPhamAndSizeAndMau(ma, item.getSize(), item.getMau());
				if (phanloai.getSoLuong()>soLuong) {
					item.setId_ChiTiet(id);
					item.setSoLuong(soLuong);
					item.getGioHang1().setID_Gio(idgiohangtheotaikhoan);
					chiTietGioHangDao.save(item);
					thongbaosoluong="";
				}
				else {
					thongbaosoluong=">>>>  Vượt quá số lượng hiện tại của cửa hàng!   <<<<	";
				}
				
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
		
		@RequestMapping("hd_them/{id}")
		public String themHD(@PathVariable("id") Integer id)
				throws IllegalStateException, IOException {
//			cart.update(id, soLuong);
			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
			
			item.setId_ChiTiet(id);
			chiTietGioHangDao.deleteById(id);
			return "redirect:/cart_products";
		}
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
		@PostMapping("thanhtoan")
		public String thanhtoan(HoaDon themhd,@RequestParam("tinh_diachi") String tinh,
		                         @RequestParam("huyen_diachi") String huyen,
		                          @RequestParam("xa_diachi") String xa,
		                          @RequestParam("apsonha_diachi") String apsonha,
		                          @RequestParam("ten_nguoimua") String ten_nguoimua,
		                          @RequestParam("sdt_nguoimua") String sdt_nguoimua,
		                           @RequestParam("ghichu") String ghichu,
		                           @RequestParam("makhuyenmai") String makhuyenmai)
		                        		   
		                        		   throws IllegalStateException, IOException{
			if (makhuyenmai.equals("")) {
				KhuyenMai khuyenMai = khuyenmaiDao.findByMaKhuyenMai(makhuyenmai);
				String myValue = sessionService.get("username");
				TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
				int mataikhoan = tk.getMaTaiKhoan();
				GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
				int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
				
				List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
				LocalDate currentDate = LocalDate.now();
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		        String formattedDate = currentDate.format(formatter);
		        String diachi = apsonha+", "+xa+", "+huyen+", "+tinh;
		        String trangthai = "Chờ xét duyệt";
		        int tong = 0; 
		        int ma;
		        TaiKhoan taiKhoan= taikhoanDao.findById(1).get();
		        sessionservice.set("taikhoan", taiKhoan); 	        	
					List<ChiTietGioHang> chitietgiohangs = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
					
		        	themhd.setDiaChi(diachi);
					themhd.setNgayDatHang(formattedDate);
					themhd.setTrangThai(trangthai);
					themhd.setTaiKhoan(taiKhoan);
					themhd.setTenNguoiMua(ten_nguoimua);
					themhd.setSdt(sdt_nguoimua);
					themhd.setKhuyenMai(khuyenMai);
					 for (ChiTietGioHang ctgh : chitietgiohangs) {
					    	ma = ctgh.getId_ChiTiet();
					        tong += ctgh.getSoLuong() * ctgh.getGia();
					        
					    }
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
						themhdct.setMau(ctgh.getMau());
						themhdct.setSize(ctgh.getSize());
						hoaDonChiTietDao.save(themhdct);
						chiTietGioHangDao.deleteById(ctgh.getId_ChiTiet());
					}
			}
			else {
				KhuyenMai khuyenMai = khuyenmaiDao.findByMaKhuyenMai(makhuyenmai);
				String myValue = sessionService.get("username");
				TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
				int mataikhoan = tk.getMaTaiKhoan();
				GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
				int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
				
				List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
				LocalDate currentDate = LocalDate.now();
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		        String formattedDate = currentDate.format(formatter);
		        String diachi = apsonha+", "+xa+", "+huyen+", "+tinh;
		        String trangthai = "Chờ xét duyệt";
		        int tong = 0; 
		        int ma;
		        int tongthanhtoan = 0;
		        TaiKhoan taiKhoan= taikhoanDao.findById(1).get();
		        sessionservice.set("taikhoan", taiKhoan); 	        	
					List<ChiTietGioHang> chitietgiohangs = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
					
		        	themhd.setDiaChi(diachi);
					themhd.setNgayDatHang(formattedDate);
					themhd.setTrangThai(trangthai);
					themhd.setTaiKhoan(taiKhoan);
					themhd.setTenNguoiMua(ten_nguoimua);
					themhd.setSdt(sdt_nguoimua);
					themhd.setKhuyenMai(khuyenMai);
					 for (ChiTietGioHang ctgh : chitietgiohangs) {
					    	ma = ctgh.getId_ChiTiet();
					        tong += ctgh.getSoLuong() * ctgh.getGia();
					        
					    }
					tongthanhtoan += tong - tong*((double)khuyenMai.getGiaKM()/100);
					themhd.setTongTien(tongthanhtoan);
					themhd.setGhiChu(ghichu);	
					hoaDonDao.save(themhd);
					
					for (ChiTietGioHang ctgh: chitietgiohangs) {
						HoaDonChiTiet themhdct = new HoaDonChiTiet();
				        themhdct.setHoaDon(themhd);
				        themhdct.setSanPham2(ctgh.getSanPham1());
						themhdct.setDonGia(ctgh.getGia());
						themhdct.setSoLuong(ctgh.getSoLuong());
						themhdct.setThanhTien(ctgh.getSoLuong()*ctgh.getGia());	
						themhdct.setMau(ctgh.getMau());
						themhdct.setSize(ctgh.getSize());
						hoaDonChiTietDao.save(themhdct);
						chiTietGioHangDao.deleteById(ctgh.getId_ChiTiet());
					}
			}
			

			return "redirect:/admin/management";
		}
		
		
		@PostMapping("kiemtrakhuyenmai")
		public String kiemtrakhuyenmai(Model model,@RequestParam("makhuyenmai") String makhuyenmai, @RequestParam("p")Optional<Integer> p)
		                        		   throws IllegalStateException, IOException{
			if (makhuyenmai.equals("")) {
				 model.addAttribute("thongbaokhuyenmai", "( Vui lòng nhập mã khuyến mãi! )");
				 String myValue = sessionService.get("username");
					TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
					int mataikhoan = tk.getMaTaiKhoan(); 
					GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
					int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
					List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//					List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
					int ma=0;
					int tong = 0;
				    for (ChiTietGioHang ctgh : itemsProducts) {
				    	ma = ctgh.getId_ChiTiet();
				        tong += ctgh.getSoLuong() * ctgh.getGia();
				        
				    }
				    
				    model.addAttribute("tongtien",tong);
				    
				    if (ma==0) {
				    	return "redirect:/cart_products";
					}
				    else {
				    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
						Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
						model.addAttribute("itemsProductvisit", page);
//				    	model.addAttribute("itemsProductvisit",itemsProducts);
				    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
				    }
				 
			}
			else {
				KhuyenMai khuyenmai = khuyenmaiDao.findByMaKhuyenMai(makhuyenmai);
				LocalDate currentDate = LocalDate.now();


			    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			    String formattedDate = currentDate.format(formatter);
				
				if (khuyenmai==null) {
					model.addAttribute("thongbaokhuyenmai", "( Mã khuyến mãi không tồn tại! )");
					String myValue = sessionService.get("username");
					TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
					int mataikhoan = tk.getMaTaiKhoan(); 
					GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
					int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
					List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//					List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
					int ma=0;
					int tong = 0;
				    for (ChiTietGioHang ctgh : itemsProducts) {
				    	ma = ctgh.getId_ChiTiet();
				        tong += ctgh.getSoLuong() * ctgh.getGia();
				        
				    }
				    
				    model.addAttribute("tongtien",tong);
				    
				    if (ma==0) {
				    	return "redirect:/cart_products";
					}
				    else {
				    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
						Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
						model.addAttribute("itemsProductvisit", page);
//				    	model.addAttribute("itemsProductvisit",itemsProducts);
				    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
				    }
				}
				else{
					LocalDate startDate = LocalDate.parse(khuyenmai.getNgayBatDau());
					LocalDate endDate = LocalDate.parse(khuyenmai.getNgayKetThuc());
					 if (currentDate.isAfter(endDate)) {
							model.addAttribute("thongbaokhuyenmai", "( Mã khuyến mãi hết hạn! )");
							String myValue = sessionService.get("username");
							TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
							int mataikhoan = tk.getMaTaiKhoan(); 
							GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
							int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
							List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//							List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
							int ma=0;
							int tong = 0;
						    for (ChiTietGioHang ctgh : itemsProducts) {
						    	ma = ctgh.getId_ChiTiet();
						        tong += ctgh.getSoLuong() * ctgh.getGia();
						        
						    }
						    
						    model.addAttribute("tongtien",tong);
						    
						    if (ma==0) {
						    	return "redirect:/cart_products";
							}
						    else {
						    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
								Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
								model.addAttribute("itemsProductvisit", page);
//						    	model.addAttribute("itemsProductvisit",itemsProducts);
						    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
						    }
						}
					 else {
						 model.addAttribute("makhuyenmai", makhuyenmai);
						 model.addAttribute("thongbaokhuyenmai", "( Mã khuyến mãi hợp lệ! Khuyến mãi "+khuyenmai.getGiaKM()+"% )");
						 String myValue = sessionService.get("username");
							TaiKhoan tk = taikhoanDao.findByTenTaiKhoanThongThuong(myValue);
							int mataikhoan = tk.getMaTaiKhoan(); 
							GioHang taikhoangiohang = gioHangDao.findByMataikhoan(mataikhoan);
							int idgiohangtheotaikhoan = taikhoangiohang.getID_Gio();
							List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findByGioHang1_ID_Gio(idgiohangtheotaikhoan);
//							List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
							int ma=0;
							int tong = 0;
							int tonghoadon = 0;
						    for (ChiTietGioHang ctgh : itemsProducts) {
						    	ma = ctgh.getId_ChiTiet();
						        tong += ctgh.getSoLuong() * ctgh.getGia();
						        
						    }
						    
						    tonghoadon += tong -tong*((double)khuyenmai.getGiaKM()/100);
						    model.addAttribute("tongtien",tonghoadon);
						    
						    if (ma==0) {
						    	return "redirect:/cart_products";
							}
						    else {
						    	Pageable pageable = PageRequest.of(p.orElse(0), 2);
								Page<ChiTietGioHang> page = chiTietGioHangDao.findByGioHangpageID(idgiohangtheotaikhoan, pageable);
								model.addAttribute("itemsProductvisit", page);
//						    	model.addAttribute("itemsProductvisit",itemsProducts);
						    	model.addAttribute("cart", "WEB-INF/accers/cart_visit");
						    }
					 }
					
				}
				
				
			}
			return "cart";
		}	
	
}
