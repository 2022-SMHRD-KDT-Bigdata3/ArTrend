package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LikesDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;
	
	public ArrayList<LikesVO> like_alarm(String user_email) {
		
		session = sqlSessionFactory.openSession(true);
		List<LikesVO> list = session.selectList("likeSelect", user_email);
		
		session.close();
		
		return (ArrayList<LikesVO>)list;
	}

	
}
