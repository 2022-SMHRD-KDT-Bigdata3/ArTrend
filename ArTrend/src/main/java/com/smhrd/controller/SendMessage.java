package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MessageDAO;
import com.smhrd.model.MessageVO;
import com.smhrd.model.UserVO;


public class SendMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserVO info = (UserVO)session.getAttribute("info");
		
		String send_email = info.getUser_email();
		String receive_email = request.getParameter("receive_email"); // 갤러리 주인이메일
		String contents = request.getParameter("contents");
		
		System.out.println(send_email+receive_email);
		
		//vo 객체 생성
		MessageVO vo = new MessageVO(send_email, receive_email, contents);
		
		MessageDAO dao = new MessageDAO();
		
		int res = dao.SendMessage(vo);
		
		if(res>0) {
	    
		System.out.println("메세지 성공");
		
		}else {
		
	    System.out.println("메세지 실패");
		
		}
			// 데이터 전송에 성공했다면 메인창으로 돌아가기 !
		
		request.setAttribute("user_info", receive_email);
		RequestDispatcher re = request.getRequestDispatcher("main.jsp");
		re.forward(request, response);
		
	}

}
