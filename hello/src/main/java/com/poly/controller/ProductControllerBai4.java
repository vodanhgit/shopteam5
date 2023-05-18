package com.poly.controller;



import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Product;

@Controller
@RequestMapping("product4")
public class ProductControllerBai4 {
@GetMapping("form4")
public String form(Model model) {
Product p = new Product();
p.setName("iPhone 30");
p.setPrice(5000.0);
model.addAttribute("p",p);
return "form4";
}
@PostMapping("save")
public String save(@ModelAttribute("sp") Product p) {
return "form4";
}
@ModelAttribute("ls_product")
public List<Product> getItems() {
return Arrays.asList(new Product("A", 1.0), new Product("B", 12.0));
} 
}
