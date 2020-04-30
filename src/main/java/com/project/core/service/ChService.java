package com.project.core.service;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.core.model.entity.ChVo;



public interface ChService {
	
	public void insertBoard(HttpServletRequest request,HttpServletResponse response,ChVo vo)throws IOException ;
	public ChVo readBoard(int bno) throws Exception;	
	public void readAllBoard(Model model) throws Exception;			
	public int updateBoard(ChVo vo) throws Exception;				
	public int deleteBoard(int bno) throws Exception;
	

}
