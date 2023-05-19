package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@RequestMapping("sanpham")
@Controller
public class SanPhamController {
	@Autowired
	HttpServletRequest req;
	@GetMapping("formsp")
	public String formsp() {
	return "sanpham";
	}
}
