package com.poly.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entities.ChiTietGioHang;
import com.poly.entities.GioHang;
import com.poly.interfaces.ShoppingCartService;
import com.poly.reponstory.ChiTietGioHangDao;

import jakarta.servlet.http.HttpSession;


@Controller
public class gioHangController {
	
		@Autowired
		private ChiTietGioHangDao chiTietGioHangDao;
		
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
//			System.out.println(itemsProducts);
			model.addAttribute("itemsProduct",itemsProducts);
//			System.out.println(itemchitiet);
			model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
			return "cart";
		}
		
		@GetMapping("cart_visit")
		public String cart_visit(Model model, HttpSession session) {
			List<ChiTietGioHang> cartItems = (List<ChiTietGioHang>) session.getAttribute("cartItems");
//			List<ChiTietGioHang> itemsProductsvisit = chiTietGioHangDao.findAll();
			
//		    System.out.println(cartItems);
		    model.addAttribute("itemsProductvisit",cartItems );
			model.addAttribute("cart", "WEB-INF/accers/cart_visit");
			return "cart";
		}
//		@PostMapping("/cart_visit")
//		public String checkout(HttpServletRequest request, HttpSession session) {
//		    String[] selectedItems = request.getParameterValues("selectedItems");
//		    List<ChiTietGioHang> cartItems = new ArrayList<>();
//		    int tong = 0;
//		    for (String maSanPham : selectedItems) {
//		        ChiTietGioHang selectedProduct = chiTietGioHangDao.findByID(maSanPham);
//		        if (selectedProduct != null) {
//		            cartItems.add(selectedProduct);
//		            tong += selectedProduct.getSoLuong() * selectedProduct.getGia();
//		        }
//		    }
//		    session.setAttribute("cartItems", cartItems);
//		    session.setAttribute("tongtien", tong);
//		    return "redirect:/cart_visit";
//		}
//		@RequestMapping("edit/{id}")
//		public String edit(Model model, @PathVariable("id") Integer id) {
//			ChiTietGioHang item = chiTietGioHangDao.findById(id).get();
//			model.addAttribute("item", item);
//			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
//			model.addAttribute("itemsProduct",itemsProducts);
//			model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
//			return "cart";
//		}
		@RequestMapping("cart_update/{id}")
		public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer soLuong,@RequestParam("idgio") Integer gioHangId)
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
}
