package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
		@GetMapping("/admin/index")
		public String index(Model model) {
			return "admin/index";
	}
		@GetMapping("/admin/account")
		public String account(Model model) {
			return "admin/accounts/account";
	}

}
