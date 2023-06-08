package com.poly.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.entities.TaiKhoan;
import com.poly.reponstory.SanPhamDao;
import com.poly.reponstory.TaiKhoanDao;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("admin")
public class adminController {
	@Autowired
	SanPhamDao spdao; // làm việc với bảng Product
	
	@Autowired
	TaiKhoanDao taikhoandao;
	
	@Autowired
	ServletContext app;
	


	public String dk() {
		return "forward:/checkout";
	}

	@RequestMapping("index")
	public String index() {
	
		return "/admin/index";
	}

	@RequestMapping("account")
	public String account( Model model, TaiKhoan taikhoan ) {
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = taikhoandao.findAll();
		model.addAttribute("items", items);
		return "/admin/accounts/account";
	}

	@RequestMapping("product")
	public String product(Model model) {
//		Product item = new Product();
//		model.addAttribute("item", item);
//		List<SanPham> items = spdao.findAll();
//		System.out.println(items);
//		model.addAttribute("items", items);
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
	@ModelAttribute("list_yesno")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Nữ");
		map.put(true, "Nam");
		return map;
	}

	@ModelAttribute("list_role")
	public Map<Boolean, String> list_role() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Client");
		map.put(true, "Admin");
		return map;
	}
}
