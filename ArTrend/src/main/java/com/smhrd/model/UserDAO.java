package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class UserDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;
	
	// 회원가입 메서드
	public int join(UserVO vo) {
		
		session = sqlSessionFactory.openSession(true);
		int res = 0;
		
		res = session.insert("join", vo);
		session.close();
		 
		return res;
	}
	
	// 로그인 메서드
		public UserVO login(UserVO vo) {
			session = sqlSessionFactory.openSession(true);
			UserVO info = null;
			info = session.selectOne("login", vo);
			session.close();

			return info;
		}
	
}
