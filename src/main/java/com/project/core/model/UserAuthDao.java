package com.project.core.model;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.core.model.entity.CustomUserVo;

@Repository
public class UserAuthDao {
	
	@Inject
	private SqlSession sqlSession;
	
	public CustomUserVo getUserById(String username) {
		return sqlSession.selectOne("user.selectUserById", username);
	}
}
