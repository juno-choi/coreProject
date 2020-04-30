package com.project.core.controller;
import java.util.Locale;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.core.model.entity.ChVo;
import com.project.core.service.ChService;



/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/ch/*")
public class ChController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChController.class);

	@Inject
	ChService chService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)	
	public String list(Locale locale, Model model) throws Exception {
	
		logger.info("리스트페이지");
		
		chService.readAllBoard(model);
		
		
		return "/ch/list";
	}
	@RequestMapping(value = "/write", method = RequestMethod.GET)	
	public String write(Locale locale) throws Exception {
	
		logger.info("글작성페이지");		
		return "/ch/write";
		
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public void write (HttpServletResponse response,HttpServletRequest request,ChVo vo) throws Exception{
				
		logger.info("글작성하자");
		chService.insertBoard(request,response,vo);						
	}
	
	
	
	
	
}
