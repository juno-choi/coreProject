package com.project.core;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.core.service.MainService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	MainService mainService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.debug("이건 찍히나");
		logger.info("이걸로 찍히냐");
		
		mainService.selectNum(model);
		
		return "home";
	}
	
	@RequestMapping(value = "/frontHow")
	public String frontHow(Locale locale, Model model) {
		
		return "frontHow.tiles";
	}
}
