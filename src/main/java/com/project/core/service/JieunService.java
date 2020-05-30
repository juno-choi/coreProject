package com.project.core.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.core.model.entity.JieunVo;

public interface JieunService {

	public void getJieunBbs(Model model);
	public void insertBoard(HttpServletResponse response, HttpServletRequest request, JieunVo vo)throws IOException;
	public void readBoard(Model model, int idx)throws Exception;
	public void deleteBoard(int idx)throws Exception;
	public void updateBoard(HttpServletResponse response, HttpServletRequest request, JieunVo vo)throws Exception;
	
}
