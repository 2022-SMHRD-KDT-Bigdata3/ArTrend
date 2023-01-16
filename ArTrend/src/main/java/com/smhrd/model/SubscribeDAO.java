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
	
	
	// 구독 현황 체크 
		public int subCheck(SubscribeVO vo) {
			session = sqlSessionFactory.openSession(true);
			
			int res = (Integer)session.selectOne("sub_select",vo);
			session.close();
			
			return res;
		}
		
		// 구독 취소 
		public int subscribe_delete(SubscribeVO vo) {
			session = sqlSessionFactory.openSession(true);
	        
	        int res = 0;
	        
	        res = session.delete("subscribe_delete", vo);
	        session.close();

	        return res;
		}
		
		
		// 갤러리 주인을 구독한  사람 수 
		public int subscriberCnt(String user_email) {
			session = sqlSessionFactory.openSession(true);
			
			int subscriberCnt = (Integer)session.selectOne("subscriberCnt", user_email);
			session.close();
			
			return subscriberCnt;
		}


		// 갤러리 주인이  구독한  사람 수 
		public int subscribingCnt(String user_email) {
			session = sqlSessionFactory.openSession(true);
			
			int subscribingCnt = (Integer)session.selectOne("subscribingCnt", user_email);
			session.close();
			
			return subscribingCnt;
		}
			
		// 나를 구독하는 사람 수 세기 
		public int mySubscriberCnt(String sub_my_email) {
			session = sqlSessionFactory.openSession(true);
			
			int subscriberCnt = (Integer)session.selectOne("mySubscriberCnt", sub_my_email);
			session.close();
			
			return subscriberCnt;
		}
		
		// 내가  구독하는 사람 수 세기 
		public int mySubscribingCnt(String sub_my_email) {
			session = sqlSessionFactory.openSession(true);
			
			int subscriberCnt = (Integer)session.selectOne("mySubscribingCnt", sub_my_email);
			session.close();
			
			return subscriberCnt;
		}
	
		// 나의 구독자 보기
		
	      public ArrayList<UserVO> subscriber(String subscribe_email) {
	          
	          session = sqlSessionFactory.openSession(true);   
	          
	          List<UserVO> list = session.selectList("subscribers", subscribe_email);
	          session.close();
	          
	          return (ArrayList<UserVO>) list;
	       }
	       
	      //나의 구독중 보기
	       public ArrayList<UserVO> subscribe(String subscribe_email) {
	          
	          session = sqlSessionFactory.openSession(true);   
	          
	          List<UserVO> list = session.selectList("subscribes", subscribe_email);
	          session.close();
	          
	          return (ArrayList<UserVO>) list;
	       }
		
}
