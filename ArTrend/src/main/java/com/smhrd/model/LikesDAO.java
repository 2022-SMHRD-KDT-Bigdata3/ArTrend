package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LikesDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;

	// 좋아요 여부 체크
	public int likeCheck(LikesVO vo) {
		session = sqlSessionFactory.openSession(true);
		
		int like = (Integer) session.selectOne("likeCheck", vo);
		session.close();
		
		return like;
	}
	
	// like 누르면 테이블에 게시글 번호, 유저 이메일 insert
	public int LikeAdd(LikesVO vo) {
		session = sqlSessionFactory.openSession(true);
		int res = session.insert("LikeAdd", vo);
		session.close();
		return res;
	}
	
	// 다시 like 누르면 테이블에 게시글 번호, 유저 이메일 delete
	public int LikeDel(LikesVO vo) {
		session = sqlSessionFactory.openSession(true);
		int res = session.delete("LikeDel", vo);
		session.close();
		return res;
	}

	// 해당 게시글 좋아요 수 카운트
	public int LikeCount(int no) {
		session = sqlSessionFactory.openSession(true);
		int count = (Integer) session.selectOne("LikeCount", no);
		session.close();
		return count;
	}

	public ArrayList<LikesVO> like_alarm(String user_email) {
		session = sqlSessionFactory.openSession(true);
		
		List<LikesVO> list = session.selectList("likeSelectAll", user_email);
		session.close();
		return (ArrayList<LikesVO>)list;
	}
}
