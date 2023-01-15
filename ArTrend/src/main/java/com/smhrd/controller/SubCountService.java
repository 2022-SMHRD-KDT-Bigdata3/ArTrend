package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.SubscribeDAO;

public class SubCountService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("구독자 카운트 서비스 실행");
		// 구독자, 구독중 수 카운트
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String user_email = request.getParameter("gallery_user_email");
		
		SubscribeDAO dao = new SubscribeDAO();
		
		// 갤러리 주인을 구독한  사람 수 
		int subscriberCnt =dao.subscriberCnt(user_email);
		
		// 갤러리 주인이 구독중인 사람 수 
		int subscribingCnt = dao.subscribingCnt(user_email);
		
		
		// 구독중 , 구독자 수에 출력하도록 하는 역할
		
		// 갤러리 주인을 구독한  사람 수 
		System.out.println(subscriberCnt);
		out.println(subscriberCnt);
		
		// 갤러리 주인이 구독중인 사람 수 
		System.out.println(subscribingCnt);
		out.println(subscribingCnt);
	}

}
