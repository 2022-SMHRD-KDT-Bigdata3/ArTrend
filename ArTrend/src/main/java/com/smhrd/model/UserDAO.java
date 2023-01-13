package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

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
		
	// 회원정보 수정 메서드 
		public int user_update(UserVO vo) {
			session = sqlSessionFactory.openSession(true);
			int cnt = session.update("user_update", vo);
			session.close();
			
			return cnt;
		}

		public int info_update(UserVO vo) {
			// TODO Auto-generated method stub
			return 0;
		}

		// 회원프로필 수정 메서드
		public int uPicUpdate(UserVO vo) {
			
			session = sqlSessionFactory.openSession(true);
			int res = session.update("uPicUpdate", vo);
			session.close();
			
			return res;
		}
		
		public UserVO userSelectOne(String user_email) {
			session = sqlSessionFactory.openSession(true);
			UserVO vo = session.selectOne("userSelectOne", user_email);
			session.close();
			return vo;

		}
		
		 // 회원포인트 업데이트 메서드
		public int user_pointup(UserVO vo) {
			session = sqlSessionFactory.openSession(true);
			int cnt = session.update("user_pointup", vo);
			session.close();
			
			return cnt;
		}
	
}
