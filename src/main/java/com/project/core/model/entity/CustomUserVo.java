package com.project.core.model.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
public class CustomUserVo implements UserDetails {

	
	private String ID;
	private String PASSWORD;
	private String AUTHORITY;
	private boolean ENABLED;
	private String NAME;
	private Date JOINDATE;
	
	// 사용자 인증
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		auth.add(new SimpleGrantedAuthority(AUTHORITY));
		return auth;
	}

	// 사용자 비밀번호
	@Override
	public String getPassword() {
		return PASSWORD;
	}

	// 사용자 id
	@Override
	public String getUsername() {
		return ID;
	}

	// 계정 만료 false == 만료된 계정
	@Override
	public boolean isAccountNonExpired() {
		
		return true;
	}

	// 계정 잠김 false == 잠긴 계정
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	// 비밀번호 만료 false == 만료된 계정
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	// 계정 활성화 false == 비활성화 계정
	@Override
	public boolean isEnabled() {
		return ENABLED;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String name) {
		NAME = name;
	}

	public Date getJOINDATE() {
		return JOINDATE;
	}

	public void setJOINDATE(Date jOINDATE) {
		JOINDATE = jOINDATE;
	}

	
}
