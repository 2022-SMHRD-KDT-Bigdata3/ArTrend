package com.smhrd.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.SubscribeDAO;
import com.smhrd.model.SubscribeVO;
import com.smhrd.model.SupportDAO;
import com.smhrd.model.UserVO;


public class SubscribeService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("구독하기 서블릿 실행");
		
		//인코딩
		request.setCharacterEncoding("UTF-8");
		//구독을 진행할 유저의 이메일(로그인한 유저의 이메일)
	      HttpSession session = request.getSession();
	      UserVO info = (UserVO) session.getAttribute("info");
	      String subscriber_email = info.getUser_email();
	      
	    //갤러리 유저의 이메일
		  String user_email = request.getParameter("gallery_user_email");
		  
		//vo에 정보 담기
		  SubscribeVO vo = new SubscribeVO(subscriber_email,user_email);
		  System.out.println(vo.toString());
		  
		//dao에게 실행시키기
		  SubscribeDAO dao = new SubscribeDAO();
		  int res = dao.subscribe_insert(vo);
		  
		  if(res >0) {
			  System.out.println("구독하기 성공");
			  response.sendRedirect("gallery_user.jsp");
		  }else {
			  System.out.println("구독하기 실패");	
			  response.sendRedirect("gallery_user.jsp");
		  }
		
		
		
	}

}
