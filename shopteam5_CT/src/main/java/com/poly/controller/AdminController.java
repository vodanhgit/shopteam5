package com.poly.controller;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@GetMapping("/admin/thongke")
	public String thongKe(Model model) {
		return "admin/thongke";
	}
	@GetMapping("/admin/index")
	public String index(Model model) {
		return "admin/index";
}
	@GetMapping("/admin/account")
	public String account(Model model) {
		return "admin/accounts/account";
}
	@ModelAttribute("trangthai_sosanh")
	public Map<String, String> getTrangThaiSoSanh(){
		Map<String, String> map = new HashMap<>();
		map.put("wait", "Chờ xét duyệt");
		map.put("approved", "Đã xét duyệt");
		map.put("cancel", "Xét duyệt thất bại");
		map.put("delivery", "Đang giao hàng");
		map.put("delivered", "Đã giao hàng");
		return map;
	}
	
	@ModelAttribute("trangthai")
	public Map<String, String> getTrangThai(){
		Map<String, String> map = new HashMap<>();
		map.put("wait", "Chờ xét duyệt");
		map.put("approved", "Đã xét duyệt");
		map.put("cancel", "Xét duyệt thất bại");
		map.put("delivery", "Đang giao hàng");
		map.put("delivered", "Đã giao hàng");
		return map;
	}
}
