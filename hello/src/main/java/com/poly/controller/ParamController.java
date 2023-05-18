package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/param")
public class ParamController {
	@Autowired
	HttpServletRequest req;
@GetMapping("form")
public String form() {
return "form2";
}
@PostMapping("save/{x}")
public String save(@PathVariable("x") String x, @RequestParam(name = "y") String y) {
	req.setAttribute("x", x);
	req.setAttribute("y", y);
return "form2";
} }
