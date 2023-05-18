package com.poly.controller;


import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.User;


@Controller
@RequestMapping("sharer")
public class SharerController {
@GetMapping("index")
public String index(Model model) {
	model.addAttribute("message","Hello Spring");
	model.addAttribute("Hello Spring");
	model.addAttribute("now",new Date());
	model.addAttribute(new Date());
	model.addAttribute("account",new User());
	model.addAttribute(new User());
	
	return "sharer";
}
@GetMapping("vidu2")
public String vidu2(@ModelAttribute("now") Date now, @ModelAttribute("account") User user) {
	return "sharer";
}
}
