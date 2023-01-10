package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardsDAO;
import com.smhrd.model.BoardsVO;

public class PostViewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardsDAO dao = new BoardsDAO();
		BoardsVO vo = dao.postView(board_num);
		
		request.setAttribute("vo", vo);
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
		
	}

}
