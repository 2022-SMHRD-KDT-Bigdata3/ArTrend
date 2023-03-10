package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.SubscribeDAO;
import com.smhrd.model.SubscribeVO;
import com.smhrd.model.UserVO;

public class UserInfoCheck extends HttpServlet {
   private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String user_email = request.getParameter("getUser_email"); // 게시글 작성자의 이메일
		UserVO userInfo = (UserVO)session.getAttribute("info");
		String loginEmail = userInfo.getUser_email();	// 로그인 한 사람의 이메일
		
		String user_nick = request.getParameter("getUser_nick");
		
		if(user_email.equals(loginEmail)) {
			RequestDispatcher re = request.getRequestDispatcher("gallery_my.jsp");
			re.forward(request, response);
		} else {
			request.setAttribute("user_nick", user_nick);
			RequestDispatcher re = request.getRequestDispatcher("gallery_user.jsp");
			re.forward(request, response);	
		}
	}
}
