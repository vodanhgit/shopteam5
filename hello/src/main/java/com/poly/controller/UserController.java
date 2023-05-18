package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	HttpServletRequest req;
	@Autowired
	HttpServletResponse resp;

	@GetMapping("create")

	public String createGet() {
		return "user_create";
	}

	@PostMapping("create")
	public String createPost() {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = new User(username, password);
		req.setAttribute("username", req.getParameter("username"));
		req.setAttribute("password", req.getParameter("password"));
		
		return "user_detail";

	}

}