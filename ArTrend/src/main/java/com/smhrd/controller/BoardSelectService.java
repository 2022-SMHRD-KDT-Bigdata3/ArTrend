package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardsDAO;
import com.smhrd.model.BoardsVO;


public class BoardSelectService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Integer board_num = Integer.parseInt(request.getParameter("getBoard_num"));
		
		BoardsDAO dao = new BoardsDAO();
		
		BoardsVO selectedBoard = dao.boardSelect(board_num);
		
		if(selectedBoard != null) {
			request.setAttribute("selectedBoard", selectedBoard);
			RequestDispatcher re = request.getRequestDispatcher("post_modify.jsp");
			re.forward(request, response);
		}
		
	}

}
