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
		
		Logger.debug("");
		jieunService.getJieunBbs(model);
		
		return "jieun/jieun.tiles"; //
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)//페이지 이동
	public String write() throws Exception{
		
		return "jieun/write.tiles";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)//실제로 글쓰는거 //pom태그를 사용하면 post : update, write
			
	public void write (HttpServletResponse response, HttpServletRequest request, JieunVo vo) throws Exception {
		
		jieunService.insertBoard(response, request,vo);
	}
	
//	@RequestMapping(value="/delete")
//	public String delete(HttpServletRequest request, HttpServletResponse response, JieunVo vo) {
//		
//		jieunService.deleteBoard(vo.getIdx());
//		
//		return "jieun/jieun.tiles";
//	}
	
	@RequestMapping(value = "/detail", method=RequestMethod.GET)
	public String detail(@RequestParam("idx") int idx, Model model)throws Exception {//model은 애트리뷰트 view, 리스트에 있는 정보를 디테일 페이지로 가져오기 위해 쓴다 
		
		System.out.println("확인"+idx);
		
		jieunService.readBoard(model, idx);
		
	
		
		return "jieun/detail.tiles";
		
		
	}

}
