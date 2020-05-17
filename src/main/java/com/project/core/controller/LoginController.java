package com.project.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "/loginPage")
	public String login(Model model) {
		
		return "junho/loginPage.tiles";
	}
	
	@RequestMapping("/joinPage")
	public String join(Model model) {
		
		return "junho/join.tiles";
	}
	
	@RequestMapping("/access_denied_page")
	public String accessDeniedPage() throws Exception {
		return "junho/access_denied_page.tiles";
	}
}
