package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.LikesDAO;
import com.smhrd.model.LikesVO;



public class LikeSelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_email = request.getParameter("user_email");
		
		LikesDAO dao = new LikesDAO();
		ArrayList<LikesVO> list = dao.like_alarm(user_email);
		
		for(LikesVO vo : list) {
			System.out.println(vo.toString());
		}
		// 보내는 사람, 내용에는 한글이 포함되어 있기 때문에 요청 받기 전에 인코딩 실시
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		// gson.toJson(변환하고 싶은 객체); --> JSON 형태의 문자열로 반환
		String result = gson.toJson(list);
		System.out.println(result);
		// 실제로 출력하기
		out.print(result);
	}

}
