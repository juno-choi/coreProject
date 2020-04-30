package com.project.core.model;



import java.util.List;

import com.project.core.model.entity.ChVo;

public interface ChDao {
	
	public int insertBoard(ChVo vo);
	public ChVo readBoard(int bno) throws Exception;	
	public List<Object> readAllBoard() throws Exception;		
	public int updateBoard(ChVo vo) throws Exception;				
	public int deleteBoard(int bno) throws Exception;
	

}
