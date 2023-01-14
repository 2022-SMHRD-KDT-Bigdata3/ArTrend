package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.LikesDAO;

public class LikeCountService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 좋아요 수 카운트
		
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int no = Integer.parseInt(request.getParameter("board_num"));
		
		LikesDAO dao = new LikesDAO();
		// 해당 게시글의 좋아요 수 구하는 dao
		int count = dao.LikeCount(no);
		
		// post_view.jsp에 추천수 출력하도록 하는 역할
		System.out.println(count);
		out.println(count);
		
	}

}
