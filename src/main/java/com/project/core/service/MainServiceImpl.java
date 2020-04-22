package com.project.core.service;



import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.core.model.MainDao;


@Service
public class MainServiceImpl implements MainService {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void selectNum(Model model) {
		String num = sqlSession.getMapper(MainDao.class).selectNum();
		model.addAttribute("num", num);
	}
	
}
