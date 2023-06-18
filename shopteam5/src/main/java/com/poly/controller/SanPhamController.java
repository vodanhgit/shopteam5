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

public class SanPhamController {

	@Autowired
	SanPhamDao dao; // làm việc với bảng Product
	@RequestMapping("sanpham")
	public String index(Model model) {
		
		return "index";
	}	
	
}
