package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.LikesDAO;
import com.smhrd.model.LikesVO;


public class LikeCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		// 좋아요 누른 사람 이메일, 해당 게시글 번호 가져오기
		
		System.out.println("실행 !!");
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		System.out.println("게시글 번호 : " + board_num);
		String user_email = request.getParameter("user_email");
		System.out.println("이메일 : " + user_email);
		
		LikesVO vo = new LikesVO(board_num, user_email);
		
		LikesDAO dao = new LikesDAO();
		int result = dao.likeCheck(vo);
		
		PrintWriter out = response.getWriter();
		String icon = null;
		
		if(result == 0) {
			System.out.println("좋아요 눌림!");
			dao.LikeAdd(vo);
			icon = "./assets/kjh/icon/heart-fill.svg";
			out.println(icon);
		}else {
			System.out.println("좋아요 삭제!");
			dao.LikeDel(vo);
			icon = "./assets/kjh/icon/heart-nofill.svg";
			out.println(icon);
		}
		
	}
}
