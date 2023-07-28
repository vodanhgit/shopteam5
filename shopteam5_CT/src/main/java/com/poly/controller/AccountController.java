package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {
	@GetMapping("/home/login")
	public String login() {
		return "home/login";
	}
	
	@GetMapping("/home/register")
	public String register() {
		return "home/register";
	}
	
	@GetMapping("/home/forgot-password")
	public String forgot_password() {
		return "home/forgot-password";
	}
	
	@GetMapping("/home/check-mail")
	public String check_mail() {
		return "home/check-mail";
	}
	
	@GetMapping("/home/set-new-password")
	public String set_new_password() {
		return "home/set-new-password";
	}
	
	@GetMapping("/home/chane-password")
	public String chane_password() {
		return "home/chane-password";
	}
}
