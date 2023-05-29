package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@RequestMapping("dangky")
@Controller
public class dangKyController {
	@Autowired
	HttpServletRequest req;
	@GetMapping("form")
	public String form() {
	return "dangKy";
	}
}
