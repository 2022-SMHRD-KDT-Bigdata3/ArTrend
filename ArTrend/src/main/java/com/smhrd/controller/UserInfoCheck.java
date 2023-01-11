package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserVO;

public class UserInfoCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String user_nick = request.getParameter("getUser_email");
		UserVO userInfo = (UserVO)session.getAttribute("info");
		String loginEmail = (userInfo.getUser_email()).split("@")[0];
		
		if(user_nick.equals(loginEmail)) {
			RequestDispatcher re = request.getRequestDispatcher("gallery_my.jsp");
			re.forward(request, response);
		} else {
			RequestDispatcher re = request.getRequestDispatcher("gallery_user.jsp");
			re.forward(request, response);	
		}
	}
}
