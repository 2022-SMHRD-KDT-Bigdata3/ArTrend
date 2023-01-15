package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.SubscribeDAO;
import com.smhrd.model.SubscribeVO;

public class SubCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 유저 갤러리에서 그 사람 구독하기 버튼 눌렀을 때, 구독 여부 체크하는 서블릿
		
		request.setCharacterEncoding("UTF-8");
		
		String my_nick = request.getParameter("my_nick");
		System.out.println("구독하기를 누른 사람 (나) 닉네임 : " + my_nick);
		String subscriber_email = request.getParameter("my_email");
		System.out.println("구독하기를 누른 사람 (나) 이메일 : " + subscriber_email);
		String user_email =	request.getParameter("gallery_user_email");
		System.out.println("구독할 사람 (갤러리 주인) 닉네임 : " + user_email);
		
		SubscribeVO vo = new SubscribeVO(subscriber_email,user_email);
		SubscribeDAO dao = new SubscribeDAO();
		int subCheck = dao.subCheck(vo);
		

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String btn_status = "";
		
		if(subCheck == 0) {
			System.out.println(" 구독해주셔서 감사합니당  ");
			dao.subscribe_insert(vo);
			btn_status = "구독중 ";
			out.println(btn_status);
		}else {
			System.out.println("이미 구독 중 ,, 구독 취소 실행 ");
			dao.subscribe_delete(vo);
			btn_status = "구독하기 ";
			out.println(btn_status);
		}
	}

}
