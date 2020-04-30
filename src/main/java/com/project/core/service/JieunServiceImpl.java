package com.project.core.service;

import java.util.ArrayList;

import javax.inject.Inject;

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
}
