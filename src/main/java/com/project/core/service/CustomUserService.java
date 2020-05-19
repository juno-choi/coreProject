package com.project.core.service;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.project.core.model.UserAuthDao;
import com.project.core.model.entity.CustomUserVo;

public class CustomUserService implements UserDetailsService{

	@Inject
	private UserAuthDao userAuthDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserVo user = userAuthDao.getUserById(username);
		if(user==null) {
			throw new UsernameNotFoundException(username);
		}
		return user;
	}

}
