package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardsDAO {

   private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   private SqlSession session;

   public int postWrite(BoardsVO vo) {

      session = sqlSessionFactory.openSession(true);
      int res = session.insert("postWrite", vo);
      session.close();

      return res;
   }
	
	//게시물의 정보를 가져오는 기능 사용하고있는지 모르겠ㄲ음...일단두자
	public ArrayList<BoardsVO> SubscriberSelectAll() {
		session = sqlSessionFactory.openSession(true);
		
		List<BoardsVO> list = session.selectList("SubscriberSelectAll");
		session.close();
		
		return (ArrayList<BoardsVO>)list;
	}
	
	public BoardsVO postView(int board_num) {
		session = sqlSessionFactory.openSession(true);
		BoardsVO vo = session.selectOne("postView", board_num);
		session.close();
		return vo;

	}

	 // 모든 게시글 정보 가져오기 (post_view)
	   public ArrayList<JoinVO> getBoardNick() {
	      session = sqlSessionFactory.openSession(true);

	      List<JoinVO> list = session.selectList("getBoardNick");
	      session.close();

	      return (ArrayList<JoinVO>) list;
	   }
	   
	  
	// 클릭한 게시글만 정보 가져오기
	   public BoardsVO boardSelect(Integer board_num) {
		session = sqlSessionFactory.openSession(true);
		
		BoardsVO res = session.selectOne("selectedBoard", board_num);
		session.close();
		
		return res;
	}
		
		// 게시글 수정
	   public int postModify(BoardsVO vo) {
		session = sqlSessionFactory.openSession(true);
		
		int res = session.update("postModify", vo);
		session.close();
		
		return res;
	}

	   // 게시글 삭제
	public int boardDelete(Integer board_num) {
		
		session = sqlSessionFactory.openSession(true);
		
		int res = session.delete("boardDelete", board_num);
		session.close();
		
		return res;
	}
	  
}
