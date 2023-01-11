package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CmtDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;

	public int cmtWrite(CmtVO vo) {

		session = sqlSessionFactory.openSession(true);	
		int res = session.insert("cmtWrite", vo);
		session.close();
		
		return res;
	}
	
	  public ArrayList<CmtVO> cmtView() {
	      session = sqlSessionFactory.openSession(true);

	      List<CmtVO> list = session.selectList("cmtView");
	      session.close();

	      return (ArrayList<CmtVO>) list;
	   }
	
	
}
