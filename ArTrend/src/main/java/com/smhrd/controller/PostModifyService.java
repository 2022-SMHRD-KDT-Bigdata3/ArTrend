package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		System.out.println("게시글 수정 실행");
		request.setCharacterEncoding("UTF-8");
		
		Integer board_num = Integer.parseInt(request.getParameter("board_num"));
		System.out.println("게시물번호:"+board_num);
		
		String board_title = request.getParameter("board_title");
		System.out.println("게시글 타이틀:"+board_title);
		
		String board_type = request.getParameter("board_type");
		System.out.println("게시글타입 :"+ board_type);
		
		String board_content = request.getParameter("board_content");
		System.out.println("게시글 내용:"+board_content);
				
		BoardsVO vo = new BoardsVO(board_num, board_type,board_title, board_content);
		System.out.println(vo.toString());
		
		BoardsDAO dao = new BoardsDAO();
		int res = dao.postModify(vo);
		
		if(res > 0) {
			System.out.println("게시글수정 성공");
			
		}else {
			System.out.println("게시글수정 실패");
		}
		
		response.sendRedirect("gallery_my.jsp");
	}

}
