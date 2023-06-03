package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	@RequestMapping("management")
	public String orderManagement() {
		return "/admin/orderManagement/orderManagement";
	}
	@RequestMapping("infoManagement")
	public String infoManagement() {
		return "/admin/infoManagement/infoManagement";
	}
	@RequestMapping("thongke")
	public String thongke() {
		return "/admin/thongke/thongke";
	}
}
