package com.springlearn.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showLoginPage")
	private String showLoginPage() {

		return "plain-login";
	}
	@GetMapping("/leaders")
	private String showLeadersPage() {
		
		return "leaders";
	}
	
	@GetMapping("/admins")
	private String showAdminsPage() {
		
		return "admins";
	}
	@GetMapping("/access-denied")
	private String showAccessDeniedPage() {
		
		return "access-denied";
	}

}
