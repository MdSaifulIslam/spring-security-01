package com.springlearn.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showLoginPage")
	private String showLoginPage() {

		return "plain-login";
	}

}
