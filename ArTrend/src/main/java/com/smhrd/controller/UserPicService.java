package com.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class UserPicService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("UTF-8");
      HttpSession session = request.getSession();
      UserVO info = (UserVO)session.getAttribute("info");
      
      String savePath = "uimges";
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

      String user_email = info.getUser_email();
      String user_pic = multi.getFilesystemName("user_pic");
      
      UserVO vo = new UserVO();
      vo.setUser_email(user_email);
      vo.setUser_pic(user_pic);
      
      UserDAO dao = new UserDAO();
      dao.uPicUpdate(vo);
      
      response.sendRedirect("update.jsp");
      
   }

}