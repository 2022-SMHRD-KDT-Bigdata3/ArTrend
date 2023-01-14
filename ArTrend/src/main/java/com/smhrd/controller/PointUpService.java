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


public class PointUpService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("pointUpService 실행");
		
		request.setCharacterEncoding("UTF-8");
		
		// form입력값 받아오기 
		
	    int user_point = Integer.parseInt(request.getParameter("pay"));
	    
		
		// 비교용 사용자 이메일 비교 -> 세션에서 불러오기 
		HttpSession session = request.getSession();
		UserVO info = (UserVO) session.getAttribute("info");
		
		// 이메일 가져오기
		String user_email = info.getUser_email();

		// vo 객체 생성
		UserVO vo = new UserVO(user_email, user_point);
		
		//DAO 객체 생성
		UserDAO dao = new UserDAO();
		int cnt = dao.user_pointup(vo);
		
		String url ="";
		
		if(cnt>0) {
			 session.setAttribute("info", vo);
			 
			 System.out.println("포인트 DB 충전 성공");
			 RequestDispatcher re = request.getRequestDispatcher("point.jsp");
				re.forward(request, response);
		}else {
			System.out.println("포인트 DB 충전 실패");
			RequestDispatcher re = request.getRequestDispatcher("point.jsp");
			re.forward(request, response);
		}
		
		
		
		

	}

}
