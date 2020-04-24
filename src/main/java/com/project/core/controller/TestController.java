package com.project.core.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.core.service.TestService;

@Controller
@RequestMapping("/test")
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Inject
	TestService testService;
	
	@RequestMapping("/bbs")
	public String bbs(Model model) {

		logger.debug("왜 안돼");
		testService.getTestBbs(model);
		
		return "test";
	}
}
