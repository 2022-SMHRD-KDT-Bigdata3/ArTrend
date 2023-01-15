package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardsDAO;

public class ViewIncService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("UTF-8");
      
      BoardsDAO dao = new BoardsDAO();
      int res = dao.viewInc(Integer.parseInt(request.getParameter("board_num")));
      
      PrintWriter out = response.getWriter();

      if (res > 0) {
         System.out.println("댓글 작성 완료");
         out.print("{\"viewCheck\" : \"Y\"}");
      } else {
         System.out.println("댓글 작성 실패");
         out.print("{\"viewCheck\" : \"N\"}");
      }
      
   }

}