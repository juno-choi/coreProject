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
	
	@RequestMapping("choice")
	public String choice(Model model, ModelAndView mv) throws Exception {
		
		return "junho/choice.tiles";
	}
	
	@RequestMapping("chat")
	public String chat(Model model) throws Exception {
		boolean fret = jhMainService.initChat(model);
		
		
		return "junho/chat.tiles";
	}
	
}
