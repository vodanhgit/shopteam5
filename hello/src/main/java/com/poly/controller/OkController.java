package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import lombok.val;

@Controller
@RequestMapping("ctrl")
public class OkController {
	@Autowired
	HttpServletRequest req;
	
@RequestMapping("ok")
public String ok() {
	req.setAttribute("message", "Gọi ok()");
return "ok";
}
@PostMapping("ok")
public String m1() {
	req.setAttribute("message", "Gọi m1()");
return "ok";
}
@GetMapping("ok")
public String m2() {
	req.setAttribute("message", "Gọi m2()");
return "ok";
}
@RequestMapping(value = "ok", params = "x")
public String m3() {
	req.setAttribute("message", "Gọi m3()");
return "ok";
} 
}