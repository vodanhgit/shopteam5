package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.reponstory.SanPhamDao;

@Controller
public class trangChinhController {
	@Autowired
	SanPhamDao dao; // làm việc với bảng Product

	@RequestMapping("index")
	public String index(Model model) {
		SanPham item = new SanPham();
		model.addAttribute("item", item);
		List<SanPham> items = dao.findAll();
		model.addAttribute("items", items);
		return "index";
	}

	@GetMapping("formaonam")
	public String formaonam(Model model) {
		List<SanPham> items = dao.findAll();
		model.addAttribute("items", items);
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
