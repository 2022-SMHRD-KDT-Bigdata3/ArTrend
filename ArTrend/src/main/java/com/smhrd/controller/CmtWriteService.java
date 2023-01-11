package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CmtDAO;
import com.smhrd.model.CmtVO;
import com.smhrd.model.UserVO;

public class CmtWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserVO info_cmt = (UserVO)session.getAttribute("info");
		
		String user_email = info_cmt.getUser_email();
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String cmt_content = request.getParameter("cmt_content");
		
		CmtVO vo = new CmtVO(board_num, user_email, cmt_content);
		
		CmtDAO dao = new CmtDAO();
		dao.cmtWrite(vo);
		
		String redirecto = request.getParameter("redirecto");

		if(redirecto.equals("mp")) {
			RequestDispatcher re = request.getRequestDispatcher("gallery_my.jsp");
			re.forward(request, response);
		} else if (redirecto.equals("up")) {
			RequestDispatcher re = request.getRequestDispatcher("gallery_user.jsp");
			re.forward(request, response);
		} else {
			RequestDispatcher re = request.getRequestDispatcher("main.jsp");
			re.forward(request, response);
		}
		
	}

}
