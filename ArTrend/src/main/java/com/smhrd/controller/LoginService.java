package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;


public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 기능
				// user_email, user_pw 두 값만 받음 --> 한글 인코딩 x

				String user_email = request.getParameter("user_email");
				String user_pw = request.getParameter("user_pw");

				UserVO vo = new UserVO(user_email, user_pw);

				UserDAO dao = new UserDAO();
				UserVO info = dao.login(vo);

				if(info != null){
					System.out.println(" 로그인 성공 ! ");
					System.out.println(info.toString());

					// 로그인 성공 시, 로그인 정보 session에 저장
					HttpSession session = request.getSession();
					session.setAttribute("info", info);
				}else{
					System.out.println(" 로그인 실패 ");
				}

				// 로그인 후 정보를 담은 채로 메인페이지 이동
				RequestDispatcher re = request.getRequestDispatcher("main.jsp");
				re.forward(request, response);
		
		
	}

}
