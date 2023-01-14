package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.BoardsVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;


public class InfoUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("InfoUpdateService(소개글수정/추가) 실행");
		
		//인코딩
		request.setCharacterEncoding("UTF-8");
		//비교할 이메일 받기 // 세션값 받아오기 - email 확인 용도
	      HttpSession session = request.getSession();
	      UserVO info = (UserVO) session.getAttribute("info");
	      String user_email = info.getUser_email();
	      
		//입력된 소개글 받기
		String user_info = request.getParameter("user_info");
		
		System.out.println("확인용 출력 소개글 : "+user_info +"/////이메일 : "+user_email );
		
		UserVO vo = new UserVO();
		vo.setUser_email(user_email);
		vo.setUserInfo(user_info);
		
		UserDAO dao = new UserDAO();
		int res = dao.info_update(vo);
		
		if(res>0) {
			System.out.println("소개글 수정/추가 성공");
			response.sendRedirect("gallery_my.jsp");
		}else {
			System.out.println("소개글 수정/추가 실패...");
			response.sendRedirect("gallery_my.jsp");
		}
	}

}
