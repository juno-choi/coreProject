package com.project.core.model;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.core.model.entity.CustomUserVo;

@Repository
public class UserAuthDao {
	
	@Inject
	private SqlSession sqlSession; //private static SqlSession sqlSession; // static 넣어주면 로그인 안됨 
	
	public CustomUserVo getUserById(String id) {
		return sqlSession.selectOne("user.selectUserById", id);
	}
	
	public CustomUserVo getUserByUserName(String username) {
		return sqlSession.selectOne("user.selectUserByUserName", username);
	}
	
	public int insertNormalUser(CustomUserVo vo) {
		return sqlSession.insert("user.insertNormalUser", vo);
		
	}
	
	public CustomUserVo getSnsUserBySnsId(CustomUserVo vo) {
		return sqlSession.selectOne("user.selectSnsUserBySnsId", vo);
	}



	
	
}
