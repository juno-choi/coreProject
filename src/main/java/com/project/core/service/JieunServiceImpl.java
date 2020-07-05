package com.project.core.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

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
import com.project.core.model.UserAuthDao;
import com.project.core.model.entity.CustomUserVo;
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

	@Override
	public void updateBoard(HttpServletResponse response, HttpServletRequest request, JieunVo vo) throws Exception {
		
		jieunDao.updateBoard(vo);
		
		response.sendRedirect("/jieun/bbs");
		
	}


	@Override
	public void initChat(Model model) throws Exception {
		
		String username = CustomUserService.getUserId();
		model.addAttribute("username", username); //key , value
		
	}

	
}
