package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class trangChinhController {
		@Autowired
		HttpServletRequest req;
		@RequestMapping("index")
		public String index() {
		return "accers/index";
		}
		public String dk() {
		return "forward:/checkout";
		
		
	}
		@RequestMapping("formadmin")
		public String adminform() {
		return "accers/home";
		}
		@RequestMapping("text")
		public String text() {
		return "/admin/text";
		}
		@RequestMapping("editprofile")
		public String editprofile() {
		return "/admin/editprofile";
		}
}
