package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class ManagemntController {
	@GetMapping("/managment/managment")
	public String man(Model model) {
		return "managment/managment";
	}
	
	@GetMapping("/managment/chitietman")
	public String chitietman(Model model) {
		return "managment/chitietman";
	}
	
	@GetMapping("/infoMan/infoMan")
	public String infoMan(Model model) {
		return "infoMan/infoMan";
	}
	
	@GetMapping("/infoMan/cthdnd")
	public String infoMancthdnd(Model model) {
		return "infoMan/chitiethoadonnguoidung";
	}
}
