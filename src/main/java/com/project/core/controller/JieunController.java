package com.project.core.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.core.model.entity.JieunVo;
import com.project.core.service.JieunService;

@Controller
@RequestMapping("/jieun")
public class JieunController {

	private static final Logger Logger = LoggerFactory.getLogger(JieunController.class);
	
	@Inject
	JieunService jieunService;
	
	@RequestMapping("/bbs")
	public String bbs(Model model) {
		
		jieunService.getJieunBbs(model);
		
		return "jieun/jieun.tiles"; // 
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)//占쏙옙占쏙옙占쏙옙 占싱듸옙
	public String write() throws Exception{
		
		return "jieun/write.tiles";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)//占쏙옙占쏙옙占쏙옙 占쌜억옙占승곤옙 //pom占승그몌옙 占쏙옙占쏙옙玖占� post : update, write
	public void write (HttpServletResponse response, HttpServletRequest request, JieunVo vo) throws Exception {
		
		jieunService.insertBoard(response, request,vo);
	}
	
	@RequestMapping(value = "/detail", method=RequestMethod.GET)
	public String detail(@RequestParam("idx") int idx, Model model)throws Exception {//model占쏙옙 占쏙옙트占쏙옙占쏙옙트 view, 占쏙옙占쏙옙트占쏙옙 占쌍댐옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 
		
		System.out.println("check : "+idx);
		
		jieunService.readBoard(model, idx);
		
	
		
		return "jieun/detail.tiles";
		
	}
	
	@RequestMapping(value="/delete", method= RequestMethod.GET)
	public void delete(@RequestParam("idx") int idx, HttpServletResponse res)throws Exception{
		
		jieunService.deleteBoard(idx);
		
		res.sendRedirect("bbs");

	}
	
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public String update(@RequestParam("idx") int idx, Model model) throws Exception{
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+idx);
		
		jieunService.readBoard(model, idx);
		
		return "jieun/update.tiles";

	}
	
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public void update (HttpServletResponse response, HttpServletRequest request, JieunVo vo) throws Exception {
		
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+vo.getIdx());
		
		jieunService.updateBoard(response, request,vo);
		
	}
	
	@RequestMapping(value="/chat")//USERS DB
	public String chat (Model model)throws Exception {
		
		jieunService.initChat(model);
		
		return "jieun/chat.tiles";
	}
	
	
	
	
	
	

}
