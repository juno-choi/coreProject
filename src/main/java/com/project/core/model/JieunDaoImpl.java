package com.project.core.model;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.core.model.entity.JieunVo;

@Repository
public class JieunDaoImpl implements JieunDao{

	@Inject
	SqlSession sqlSession;
	private static String namespace ="com.project.core.model.JieunDao";
	
	@Override
	public ArrayList<JieunVo> selectJieunBbs() {
		
		return sqlSession.getMapper(JieunDao.class).selectJieunBbs();
	}

	@Override
	public int insertBoard(JieunVo vo) {
		return sqlSession.insert(namespace+".insertBoard", vo);
		
	}

	@Override
	public JieunVo readBoard(int idx) {
		
		return sqlSession.selectOne(namespace+".readBoard", idx);
				
		
	}

	@Override
	public int deleteBoard(int idx) {
		
		return sqlSession.delete(namespace+".deleteBoard", idx);
		
	}

}
