package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MessageDAO;
import com.smhrd.model.MessageVO;
import com.smhrd.model.UserVO;

public class MessageSelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 나에게 온 메세지 전체 불러오기
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserVO my_info = (UserVO)session.getAttribute("info");
		
		String my_email = my_info.getUser_email();
		System.out.println(my_email);
		
		MessageDAO dao = new MessageDAO();
		ArrayList<MessageVO> list = dao.MessageAll(my_email);
		
		for(MessageVO vo : list) {
			System.out.println(vo.toString());
		}
		// 보내는 사람, 내용에는 한글이 포함되어 있기 때문에 요청 받기 전에 인코딩 실시
		response.setCharacterEncoding("UTF-8");
		
		request.setAttribute("my_msg", list);
		RequestDispatcher re = request.getRequestDispatcher("MessageSystem.jsp");
		re.forward(request, response);
		
	}

}
