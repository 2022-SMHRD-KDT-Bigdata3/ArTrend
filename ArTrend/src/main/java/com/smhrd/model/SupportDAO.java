package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class SupportDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;
	
	
	// 후원 목록 가져오기 
	public SupportVO getSupport(String user_email) {
		session = sqlSessionFactory.openSession(true);
		
	   SupportVO vo= session.selectOne("getSupport",user_email);
		session.close();
		
		return vo;
	}


	// 후원 물품 등록하기
	public int SupportInsert(SupportVO vo) {
		session = sqlSessionFactory.openSession(true);
		
		int res = session.insert("SupportInsert",vo);
		session.close();
		
	    return res;
	    
	}


	public int supportDelete(String user_email) {
		int res = 0;
		session = sqlSessionFactory.openSession(true);
		
		res = session.delete("supportDelete",user_email);
		session.close();
		
		return res;
	}
	
}
