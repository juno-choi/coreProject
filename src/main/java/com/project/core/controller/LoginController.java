package com.project.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login(Model model) {
		
		return "junho/login.tiles";
	}
	
	@RequestMapping("/joinPage")
	public String join(Model model) {
		
		return "junho/join.tiles";
	}
}
