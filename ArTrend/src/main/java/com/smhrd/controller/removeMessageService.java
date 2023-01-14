package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MessageDAO;


public class removeMessageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 선택한 메세지 삭제
		
		int msg_num = Integer.parseInt(request.getParameter("msg_num"));
		System.out.println("메세지번호 : " +  msg_num);
		
		MessageDAO dao = new MessageDAO();
		int cnt = dao.messageDelete(msg_num);
		System.out.println(cnt);
		
		if(cnt > 0) {
			System.out.println("메세지 삭제 성공");
		}else {
			System.out.println("메세지 삭제 실패");
		}
		response.sendRedirect("MessageSelectAll");
	}

}
