package com.project.core.model;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.core.model.entity.ChVo;

@Repository
public class ChDaoImpl implements ChDao {

	@Inject
	private SqlSession sqlSession;
	private static String namespace="com.project.core.model.ChDao";
	@Override
	public int insertBoard(ChVo vo) {
		
		return sqlSession.insert(namespace+".insertBoard",vo);
	}

	@Override
	public ChVo readBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> readAllBoard() throws Exception {
		
		return sqlSession.selectList(namespace+".readAllBoard");
	}


	@Override
	public int updateBoard(ChVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
