package com.project.core.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.core.model.JieunDao;
import com.project.core.model.entity.JieunVo;

@Service
public class JieunServiceImpl implements JieunService{

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private JieunDao jieunDao;
	
	@Override
	public void getJieunBbs(Model model) {
		ArrayList<JieunVo> list = new ArrayList<JieunVo>();
		list = jieunDao.selectJieunBbs();
		model.addAttribute("jieunBbs",list);
		
		
	}

	@Override
	public void insertBoard(HttpServletResponse response, HttpServletRequest request, JieunVo vo) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		jieunDao.insertBoard(vo);
		
		response.sendRedirect("/jieun/bbs");
		
	}

	@Override
	public void readBoard(Model model, int idx) throws Exception{
		
		JieunVo list = jieunDao.readBoard(idx);
		
		System.out.println("check : "+list);
		
		model.addAttribute("jieunBbs", list);
		
		
	}

	@Override
	public void deleteBoard(int idx) throws Exception {
		jieunDao.deleteBoard(idx);
		
	}
}
