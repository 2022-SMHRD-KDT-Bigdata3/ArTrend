<<<<<<< HEAD
package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MessageDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;

	// 메세지 불러오기
	public ArrayList<MessageVO> MessageAll(String my_email) {		
		session = sqlSessionFactory.openSession(true);
		List<MessageVO> list = session.selectList("myMessage", my_email);
		session.close();
		
		return (ArrayList<MessageVO>)list;
	}

	// 메세지 삭제
	public int messageDelete(int msg_num) {
		session = sqlSessionFactory.openSession(true);
		int res = session.delete("removeMessage", msg_num);
		session.close(); 
		return res;
	}
	
}
=======
package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MessageDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;

	// 메세지 불러오기
	public ArrayList<MessageVO> MessageAll(String my_email) {		
		session = sqlSessionFactory.openSession();
		List<MessageVO> list = session.selectList("myMessage", my_email);
		session.close();
		
		return (ArrayList<MessageVO>)list;
	}

	// 메세지 삭제
	public int messageDelete(int msg_num) {
		session = sqlSessionFactory.openSession();
		int res = session.delete("removeMessage", msg_num);
		return res;
	}
	
	public int SendMessage(MessageVO vo) {
		
		session = sqlSessionFactory.openSession(true);
		
		int res = session.insert("sendMessage",vo);
	
		session.close();
	
		return res;
	}
}
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-Bigdata3/ArTrend.git
