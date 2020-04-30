package com.project.core.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.core.service.JieunService;

@Controller
@RequestMapping("/jieun")
public class JieunController {

	private static final Logger Logger = LoggerFactory.getLogger(JieunController.class);
	
	@Inject
	JieunService jieunService;
	
	@RequestMapping("/bbs")
	public String bbs(Model model) {
		
		Logger.debug("");
		jieunService.getJieunBbs(model);
		
		return "jieun/jieun"; //
	}

}
