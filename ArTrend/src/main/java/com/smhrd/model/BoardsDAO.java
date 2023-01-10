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
	
	
	//게시물의 정보를 가져오는 기능
	public ArrayList<BoardsVO> SubscriberSelectAll() {
		session = sqlSessionFactory.openSession(true);
		
		List<BoardsVO> list = session.selectList("SubscriberSelectAll");
		session.close();
		
		return (ArrayList<BoardsVO>)list;
	}

}
