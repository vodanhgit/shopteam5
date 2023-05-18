package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Product;
import com.poly.model.User;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	HttpServletRequest req;
@GetMapping("/form")
public String form() {
return "form3";
}
@PostMapping("/save")
public String save(/*?1*/) {
	String name = req.getParameter("name");
	Double price = Double.parseDouble(req.getParameter("price")) ;
	Product pro = new Product();
	req.setAttribute("name", req.getParameter("name"));
	req.setAttribute("price", req.getParameter("price"));
return "form3";
} 
}

