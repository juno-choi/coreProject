package com.project.core.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.core.model.entity.JieunVo;

public interface JieunService {

	public void getJieunBbs(Model model);
	public void insertBoard(HttpServletResponse response, HttpServletRequest request, JieunVo vo)throws IOException;
	
}
