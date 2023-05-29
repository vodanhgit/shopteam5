package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class datHangController {
	@RequestMapping("checkout")
	public String ck() {
		return "checkout/checkout";
	}
	@RequestMapping("bill")
	public String bill() {
		return "bill/bill";
	}
}
