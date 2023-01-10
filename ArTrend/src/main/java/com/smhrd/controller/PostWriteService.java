package com.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardsDAO;
import com.smhrd.model.BoardsVO;

public class PostWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// 파일 경로
		String savePath = "imges";
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println(uploadFilePath);
		
		File dir = new File(uploadFilePath);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		
		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSizeLimit, encType,
				new DefaultFileRenamePolicy());

		String board_type = multi.getParameter("board_type");
		String board_title = multi.getParameter("board_title");
		String board_content = multi.getParameter("board_content");
		String board_pic = multi.getFilesystemName("board_pic");

		BoardsVO vo = new BoardsVO(board_type, board_title, board_content, board_pic);

		BoardsDAO dao = new BoardsDAO();
		int res = dao.postWrite(vo);

		
		if(res>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		response.sendRedirect("gallery_my.jsp");

	}

}
