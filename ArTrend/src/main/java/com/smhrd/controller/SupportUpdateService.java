package com.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.SupportDAO;
import com.smhrd.model.SupportVO;
import com.smhrd.model.UserVO;


public class SupportUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("후원물품 등록 기능요청");
		
		// 한글인코딩
				request.setCharacterEncoding("UTF-8");
				
				// 저장할 img폴더 이름 -> webapp폴더 아래 imges폴더에 올린 이미지를 저장할 것이다
				String savePath = "gift_imges";
				// 최대 업로드 파일 크기 5MB로 제한
				int uploadFileSizeLimit = 5 * 1024 * 1024;
				// 인코딩 타입 지정
				String encType = "UTF-8";
				HttpSession session = request.getSession();
				UserVO info12 = (UserVO) session.getAttribute("info");
				System.out.println(info12.getUser_email());
				
				// 이미지를 gift_imges폴더에 저장하기위해 gift_imges 폴더의 경로를 가져오는 코드
				ServletContext context = getServletContext();
				// 실제 저장될 gift_imges폴더의 경로
				String uploadFilePath = context.getRealPath(savePath);
				System.out.println(uploadFilePath);
				
				File dir = new File(uploadFilePath);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				
				// 사용자가 작성한 게시글 정보와 이미지 경로를 가져오기위한 MultipartRequest 객체 생성
				MultipartRequest multi = new MultipartRequest(request, uploadFilePath,uploadFileSizeLimit,encType,
				new DefaultFileRenamePolicy());
				
				
				// 사용자가 입력한 게시글 정보 가져오기
				String user_email = info12.getUser_email();
				String gift_title = multi.getParameter("gift_title");
				String gift_pic = multi.getFilesystemName("gift_pic");
				String gift_content = multi.getParameter("gift_content");
				SupportVO vo = new SupportVO(user_email,gift_title, gift_pic,gift_content);
				System.out.println(vo.toString());
		
				SupportDAO dao = new SupportDAO();
				// 해당 입력한 게시글을 DB에 삽입한다
				int res = dao.SupportInsert(vo);
				
				if(res > 0) {
					System.out.println("후원글등록 성공");
				}else {
					System.out.println("후원글등록 실패");
				}
				response.sendRedirect("gallery_my.jsp");
				
	}

}
