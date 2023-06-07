package com.poly.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.reponstory.SanPhamDao;

@Controller
@RequestMapping("admin")
public class adminController {
	@Autowired
	SanPhamDao spdao; // làm việc với bảng Product

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
	public String product(Model model) {
//		Product item = new Product();
//		model.addAttribute("item", item);
		List<SanPham> items = spdao.findAll();
		System.out.println(items);
		model.addAttribute("items", items);
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
