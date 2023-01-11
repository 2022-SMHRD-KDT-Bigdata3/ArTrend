package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardsVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;


public class InfoUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_email = request.getParameter("user_email");
		String info_update_content = request.getParameter("info_update_content");
		
		UserVO vo = new UserVO(user_email , info_update_content);
		
		UserDAO dao = new UserDAO();
		int res = dao.info_update(vo);
		
		if(res>0) {
			System.out.println("소개글 수정/추가 성공");
		}
	}

}
