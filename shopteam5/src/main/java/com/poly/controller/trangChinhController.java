package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class trangChinhController {
	@Autowired
	HttpServletRequest req;

	@RequestMapping("index")
	public String index() {
		return "index";
	}

	public String dk() {
		return "forward:/checkout";

	}

	@RequestMapping("indexadmin")
	public String indexadmin() {
		return "/index";
	}

	@RequestMapping("accountadmin")
	public String accountadmin() {
		return "/accounts/account";
	}
	@RequestMapping("productadmin")
	public String productadmin() {
		return "/products/product";
	}
	@RequestMapping("categorieadmin")
	public String categorieadmin() {
		return "/categories/category";
	}
	
	

	
}
