package com.project.core.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.core.model.TestDao;
import com.project.core.model.entity.TestVo;

@Service
public class TestServiceImpl implements TestService {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private TestDao testDao;
	
	@Override
	public void getTestBbs(Model model) {
		ArrayList<TestVo> list = new ArrayList<TestVo>();  
		list = testDao.selectTestBbs();
		model.addAttribute("testBbs",list);
	}

}
