package com.project.core.model.entity;

public class ChVo {	
	
	protected int bno;
	private String bname,btitle,bcontent;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	@Override
	public String toString() {
		return "ChVo [bno=" + bno + ", bname=" + bname + ", btitle=" + btitle + ", bcontent=" + bcontent + "]";
	}
	

	
}
