package com.project.core.model;

import java.util.ArrayList;

import com.project.core.model.entity.JieunVo;

public interface JieunDao {
	ArrayList<JieunVo> selectJieunBbs();

	public int insertBoard(JieunVo vo);

	public JieunVo readBoard(int idx);
	
}
