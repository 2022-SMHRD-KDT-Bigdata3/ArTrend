package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("UpdateService 실행");
		// update.jsp 에서 수정을 실행시 여기서 기능을 실행
		request.setCharacterEncoding("UTF-8");

		// form 입력값 받아오기 : 파라미터 수집
		String user_nick = request.getParameter("user_nick");
		String user_pw = request.getParameter("user_pw");

		// detail
		// 현재 비밀번호 확인 작업 --> select문으로 현재 비번이 DB의 비번과 일치하는지 확인
		// 새로운 비밀번호 확인 작업 --> 언제 검사할건지?
		// 1) 회원정보 '수정' 누르기 전 검사 --> JS --> event
		// 2) Controller에서 검사 --> getParameter --> if문 검사 --> 불일치하면 이전화면, 일치하면 수정완료 화면
		// (ex. 팝업...)

		String user_new_pw = request.getParameter("user_new_pw");

		// 세션값 받아오기 - email 확인 용도
		HttpSession session = request.getSession();
		UserVO info = (UserVO) session.getAttribute("info");

		// email 수집
		String user_email = info.getUser_email();

		// VO 객체 생성
		UserVO vo = new UserVO(user_email, user_new_pw, user_nick);

		// DAO 객체 생성
		UserDAO dao = new UserDAO();
		int cnt = dao.user_update(vo);

		// 초기화
		String url = "";

		// 3. 결과에 따른 페이지 이동
		if (cnt > 0) {
			// main.jsp
			// 수정된 정보 (info)를 다시 session 영역에 저장하기 !
			session.setAttribute("info", vo);

			System.out.println("회원정보 수정 성공");
			
			// JOptionPane.showMessageDialog(null, "회원정보수정 완료");
			url = "galley_my.jsp";
		} else {
			// update.jsp
			url = "update.jsp";
		}

		RequestDispatcher re = request.getRequestDispatcher(url);
		re.forward(request, response);

	}

}