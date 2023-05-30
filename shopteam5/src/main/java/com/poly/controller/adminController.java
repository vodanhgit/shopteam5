package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {
	public String dk() {
		return "forward:/checkout";
	}

	@RequestMapping("indexadmin")
	public String indexadmin() {
		return "/admin/index";
	}

	@RequestMapping("accountadmin")
	public String accountadmin() {
		return "/admin/accounts/account";
	}

	@RequestMapping("productadmin")
	public String productadmin() {
		return "/admin/products/product";
	}

	@RequestMapping("categorieadmin")
	public String categorieadmin() {
		return "/admin/categories/category";
	}
}
