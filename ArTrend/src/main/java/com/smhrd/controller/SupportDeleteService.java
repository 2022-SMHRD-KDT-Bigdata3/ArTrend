package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.SupportDAO;


public class SupportDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_email = request.getParameter("user_email");
		System.out.println("삭제할 후원물품의 이메일 : "+ user_email);
		
		SupportDAO dao = new SupportDAO();
		
		int res = dao.supportDelete(user_email);
		
		if(res>0) {
			System.out.println("후원물품삭제 완료!");
			
		}else {
			System.out.println("후원물품삭제 실패");
		}
		// 회원목록을 다시 받아야하니까 MemberListService 서블릿으로 이동
		response.sendRedirect("gallery_my.jsp");
		
	}

}
