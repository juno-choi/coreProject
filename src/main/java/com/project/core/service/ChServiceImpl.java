package com.project.core.service;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.project.core.model.ChDao;
import com.project.core.model.entity.ChVo;

@Service
public class ChServiceImpl implements ChService{

	@Inject
	private ChDao dao;
	

	@Override
	public void insertBoard(HttpServletRequest request,HttpServletResponse response, ChVo vo) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");		
		dao.insertBoard(vo);
		PrintWriter out =response.getWriter();	
		out.println("<script>");	
		out.println("alert('작성완료');");	
		out.println("location.href='"+ request.getContextPath() +"/ch/list'");
		out.println("</script>");	

	}

	@Override
	public ChVo readBoard(int bno) throws Exception {
		
		return null;
	}

	@Override
	public void readAllBoard(Model model) throws Exception {
		List<Object> list = dao.readAllBoard();
		
		model.addAttribute("list",list);
		
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
