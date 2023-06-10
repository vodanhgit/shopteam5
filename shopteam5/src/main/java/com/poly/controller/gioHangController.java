package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.poly.entities.ChiTietGioHang;
import com.poly.reponstory.ChiTietGioHangDao;


@Controller
public class gioHangController {
	
		@Autowired
		private ChiTietGioHangDao chiTietGioHangDao;
		
		int idgiohang = 1;
		@GetMapping("cart")
		public String index() {
			return "cart";
		}
		
		@GetMapping("cart_products")
		public String cart_products(Model model) {
//			ChiTietGioHang itemchitiet = new ChiTietGioHang();
			List<ChiTietGioHang> itemsProducts = chiTietGioHangDao.findAll();
			System.out.println(itemsProducts);
			model.addAttribute("itemsProduct",itemsProducts);
//			System.out.println(itemchitiet);
			model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
			return "cart";
		}
		
		@GetMapping("cart_visit")
		public String cart_visit(Model model) {
			model.addAttribute("cart", "WEB-INF/accers/cart_visit");
			return "cart";
		}
		
}
