package com.smhrd.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	// DB와의 연결, SQL 실행에 대한 모든 역할을 수행해주는 가장 중요한 객체
	// SqlSessionFactory import 해주기
	public static SqlSessionFactory sqlSessionFactory;

	// 클래스 초기화 블록 : 클래스가 처음 로딩될 때 딱 한 번만 수행
	static {
		// 읽어올 파일 경로 지정
		// mybatis-config.xml 파일 경로 가져오기 --> 현재 폴더 기준 상대경로 X, 패키지 이름부터 정의
		String resource = "com/smhrd/db/config.xml";

		// Reader 객체 필요
		Reader reader;
		try {
			// DB 정보 읽어오기
			reader = Resources.getResourceAsReader(resource);
			// 읽어온 정보를 활용하여 SessionFactory 생성
			// sqlSessionFactory가 DB 연결 해주는것 .. (?!)
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 초기화 블럭에서 생성된 sessionFactory 반환해주는 메소드
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
}
