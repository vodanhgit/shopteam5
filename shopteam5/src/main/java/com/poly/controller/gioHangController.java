package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class gioHangController {
		@RequestMapping("cart")
		public String index() {
			return "cart";
		}
}
