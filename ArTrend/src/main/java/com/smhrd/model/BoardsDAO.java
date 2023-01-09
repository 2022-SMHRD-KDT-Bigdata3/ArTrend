package com.smhrd.model;

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

}
