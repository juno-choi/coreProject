package com.project.core.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.core.service.JhMainService;

@Controller
@RequestMapping("/junho")
public class JhMainController {

	@Inject
	JhMainService jhMainService;
	
	@RequestMapping("chat")
	public String main(Model model, ModelAndView mv) {
		
		return "junho/chat.tiles";
	}
}
