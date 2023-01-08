package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원가입 기능
		
		// 닉네임에 한글이 있을 수 있으니 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String user_email = request.getParameter("user_email");
		String user_pw = request.getParameter("user_pw");
		String user_nick = request.getParameter("user_nick");
		

		System.out.println(user_email);
		System.out.println(user_pw);
		System.out.println(user_nick);

		UserVO vo = new UserVO(user_email, user_pw, user_nick);

		System.out.println(vo.toString());

		UserDAO dao = new UserDAO();
		int res = dao.join(vo);

		if (res > 0) {
			System.out.println("회원가입 성공!");

		} else {
			System.out.println("회원가입 실패 ㅠ");
		}
		
		RequestDispatcher re = request.getRequestDispatcher("main.jsp");
		re.forward(request, response);
		
	}

}
