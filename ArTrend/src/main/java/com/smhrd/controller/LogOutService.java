package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogOutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그아웃 기능
		// 세션에 저장되어있는 정보 삭제

		HttpSession session = request.getSession();
		session.removeAttribute("info");
		RequestDispatcher re = request.getRequestDispatcher("main.jsp");
		re.forward(request, response);

	}

}
