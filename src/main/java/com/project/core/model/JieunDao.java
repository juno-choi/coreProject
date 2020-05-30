package com.project.core.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.core.model.entity.JieunVo;

public interface JieunDao {
	ArrayList<JieunVo> selectJieunBbs();

	public int insertBoard(JieunVo vo);

	public JieunVo readBoard(int idx);

	public int deleteBoard(int idx);

	public int updateBoard(JieunVo vo);
	
}
