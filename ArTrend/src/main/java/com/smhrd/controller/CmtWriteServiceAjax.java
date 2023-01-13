package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CmtDAO;
import com.smhrd.model.CmtVO;

public class CmtWriteServiceAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String user_email = request.getParameter("user_email");
		String cmt_content = request.getParameter("cmt_content");

		System.out.println(cmt_content);
		System.out.println(user_email);
		System.out.println(board_num);

		CmtVO vo = new CmtVO(board_num, user_email, cmt_content);

		CmtDAO dao = new CmtDAO();
		int res = dao.cmtWrite(vo);

		PrintWriter out = response.getWriter();

		if (res > 0) {
			System.out.println("댓글 작성 완료");
			out.print("{\"cmtCheck\" : \"YES\"}");
		} else {
			System.out.println("댓글 작성 실패");
			out.print("{\"cmtCheck\" : \"NO\"}");
		}

	}

}
