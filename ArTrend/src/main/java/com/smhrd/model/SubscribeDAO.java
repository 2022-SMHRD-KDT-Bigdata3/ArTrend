package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class SubscribeDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;
	
	public int subscribe_insert(SubscribeVO vo) {
        session = sqlSessionFactory.openSession(true);
        
        int res = 0;
        
        res = session.insert("subscribe_insert", vo);
        session.close();

        return res;
	}
	
	
	
	public int sub_select(SubscribeVO vo) {
		session = sqlSessionFactory.openSession(true);
		
		int res = session.selectOne("sub_select",vo);
		session.close();
		
		return res;
	}
	
	
}
