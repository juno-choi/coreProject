package com.project.core.controller;

import java.security.Principal;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.core.service.CustomUserService;
import com.project.core.service.JhMainService;

@Controller
@RequestMapping("/junho")
public class JhMainController {

	@Inject
	JhMainService jhMainService;
	
	@RequestMapping("chat")
	public String main(Model model, ModelAndView mv, Principal principal) throws Exception {
		try {
			String user_name = CustomUserService.getUserId();
			model.addAttribute("userName",user_name);
		}catch(Exception e) {
			
		}
		return "junho/chat.tiles";
	}
}
