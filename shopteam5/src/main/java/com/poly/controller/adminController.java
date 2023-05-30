package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class adminController {
	public String dk() {
		return "forward:/checkout";
	}

	@RequestMapping("index")
	public String index() {
		return "/admin/index";
	}

	@RequestMapping("account")
	public String account() {
		return "/admin/accounts/account";
	}

	@RequestMapping("product")
	public String product() {
		return "/admin/products/product";
	}

	@RequestMapping("categori")
	public String category() {
		return "/admin/categories/category";
	}
	@RequestMapping("oder")
	public String oder() {
		return "/admin/categories/category";
	}
}
