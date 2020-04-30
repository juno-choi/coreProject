package com.project.core.model.entity;

public class JieunVo {
	private int idx;
	private String subject, content, writer;
	
	public JieunVo() {
		// TODO Auto-generated constructor stub
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "JieunVo [idx=" + idx + ", subject=" + subject + ", content=" + content + ", writer=" + writer + "]";
	}

	public JieunVo(int idx, String subject, String content, String writer) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
	}
	
	
	
	
	
	
	
	
}
