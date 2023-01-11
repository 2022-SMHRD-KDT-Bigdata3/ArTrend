package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.BoardsDAO;
import com.smhrd.model.BoardsVO;


public class PostModifyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer board_num = Integer.parseInt(request.getParameter("board_num"));
		String board_title = request.getParameter("board_title");
		String board_type = request.getParameter("board_type");
		String board_content = request.getParameter("board_content");
		
		BoardsVO vo = new BoardsVO(board_num, board_title, board_type, board_content);
		
		BoardsDAO dao = new BoardsDAO();
		dao.postModify(vo);
	}

}
