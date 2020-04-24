package com.project.core.model;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.core.model.entity.TestVo;

@Repository
public class TestDaoImpl implements TestDao {

	@Inject
	SqlSession sqlSession;

	@Override
	public ArrayList<TestVo> selectTestBbs() {
		return sqlSession.getMapper(TestDao.class).selectTestBbs();
	}
	
}
