package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SanPhamController {
	@GetMapping("index")
	public String index() {
		return "index";
	}
	@GetMapping("formaonam")
	public String formaonam() {
		return "/products/form_aonam";
	}
	@GetMapping("aothunnam")
	public String aothunnam() {
		return "/products/ao_thunnam";
	}
	@GetMapping("aopolonam")
	public String aopolonam() {
		return "/products/aopolonam";
	}
	@GetMapping("aosominam")
	public String aosominam() {
		return "/products/aosominam";
	}
	@GetMapping("aolennam")
	public String aolennam() {
		return "/products/aolennam";
	}
	@GetMapping("aohoodienam")
	public String aohoodienam() {
		return "/products/aohoodienam";
	}
//	form nữ
	@GetMapping("formaonu")
	public String formaonu() {
		return "/products/form_aonu";
	}
	@GetMapping("aothunu")
	public String aothunu() {
		return "/products/ao_thunnu";
	}
	@GetMapping("aosominu")
	public String aosominu() {
		return "/products/aosominu";
	}
	@GetMapping("aobra")
	public String aobra() {
		return "/products/aobranu";
	}
	@GetMapping("aolennu")
	public String aolennu() {
		return "/products/aolennu";
	}
	@GetMapping("aohoodienu")
	public String aohoodienu() {
		return "/products/aohoodienu";
	}
	@GetMapping("mota")
	public String mota() {
		return "/products/mota";
	}
}
