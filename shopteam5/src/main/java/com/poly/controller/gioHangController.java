package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class gioHangController {
		@GetMapping("cart")
		public String index() {
			return "cart";
		}
		
		@GetMapping("cart_products")
		public String cart_products(Model model) {
			model.addAttribute("cart", "WEB-INF/accers/cart_produsts");
			return "cart";
		}
		
		@GetMapping("cart_visit")
		public String cart_visit(Model model) {
			model.addAttribute("cart", "WEB-INF/accers/cart_visit");
			return "cart";
		}
		
}
