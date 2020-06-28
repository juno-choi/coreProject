package com.project.core.model.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
public class CustomUserVo implements UserDetails {

	private int ID;
	private String USERNAME;
	private String PASSWORD;
	private String EMAIL ;
	private String NICKNAME;
	private String MOBILE;
	private String AUTHORITY;
	private boolean ENABLED;
	private Date CREATE_DATE;
	private Date MODIFY_DATE;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		auth.add(new SimpleGrantedAuthority(AUTHORITY));
		return auth;
	}
	
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return PASSWORD;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return USERNAME;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return ENABLED;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getUSERNAME() {
		return USERNAME;
	}

	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public String getNICKNAME() {
		return NICKNAME;
	}

	public void setNICKNAME(String nICKNAME) {
		NICKNAME = nICKNAME;
	}

	public String getMOBILE() {
		return MOBILE;
	}

	public void setMOBILE(String mOBILE) {
		MOBILE = mOBILE;
	}

	public String getAUTHORITY() {
		return AUTHORITY;
	}

	public void setAUTHORITY(String aUTHORITY) {
		AUTHORITY = aUTHORITY;
	}

	public Date getCREATE_DATE() {
		return CREATE_DATE;
	}

	public void setCREATE_DATE(Date cREATE_DATE) {
		CREATE_DATE = cREATE_DATE;
	}

	public Date getMODIFY_DATE() {
		return MODIFY_DATE;
	}

	public void setMODIFY_DATE(Date mODIFY_DATE) {
		MODIFY_DATE = mODIFY_DATE;
	}
	
	
	
	
//	private String ID;
//	private String PASSWORD;
//	private String AUTHORITY;
//	private boolean ENABLED;
//	private String NAME;
//	private Date JOINDATE;
//	
//	// �궗�슜�옄 �씤利�
//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
//		auth.add(new SimpleGrantedAuthority(AUTHORITY));
//		return auth;
//	}
//
//	// �궗�슜�옄 鍮꾨�踰덊샇
//	@Override
//	public String getPassword() {
//		return PASSWORD;
//	}
//
//	// �궗�슜�옄 id
//	@Override
//	public String getUsername() {
//		return ID;
//	}
//
//	// 怨꾩젙 留뚮즺 false == 留뚮즺�맂 怨꾩젙
//	@Override
//	public boolean isAccountNonExpired() {
//		
//		return true;
//	}
//
//	// 怨꾩젙 �옞源� false == �옞湲� 怨꾩젙
//	@Override
//	public boolean isAccountNonLocked() {
//		return true;
//	}
//
//	// 鍮꾨�踰덊샇 留뚮즺 false == 留뚮즺�맂 怨꾩젙
//	@Override
//	public boolean isCredentialsNonExpired() {
//		return true;
//	}
//
//	// 怨꾩젙 �솢�꽦�솕 false == 鍮꾪솢�꽦�솕 怨꾩젙
//	@Override
//	public boolean isEnabled() {
//		return ENABLED;
//	}
//
//	public String getNAME() {
//		return NAME;
//	}
//
//	public void setNAME(String name) {
//		NAME = name;
//	}
//
//	public Date getJOINDATE() {
//		return JOINDATE;
//	}
//
//	public void setJOINDATE(Date jOINDATE) {
//		JOINDATE = jOINDATE;
//	}
	
	

	
}
