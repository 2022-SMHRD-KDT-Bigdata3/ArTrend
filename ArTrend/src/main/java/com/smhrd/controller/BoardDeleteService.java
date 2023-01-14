package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardsDAO;
import com.smhrd.model.BoardsVO;


public class BoardDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Integer board_num = Integer.parseInt(request.getParameter("getBoard_num"));
		
		BoardsDAO dao = new BoardsDAO();
		
		int res = dao.boardDelete(board_num);
		
		if(res >0) {
			System.out.println("게시물 삭제 성공");
			
		}else {
			System.out.println("게시물 삭제 실패...");
		}
		response.sendRedirect("gallery_my.jsp");

	}

}
