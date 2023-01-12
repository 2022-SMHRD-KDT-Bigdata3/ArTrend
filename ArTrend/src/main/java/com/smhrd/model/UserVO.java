package com.smhrd.model;

public class UserVO {

	// 유저 이메일
    private String user_email;

    // 유저 비밀번호
    private String user_pw;

    // 유저 닉네임
    private String user_nick;

    // 유저 프로필사진
    private String user_pic;

    // 유저 소개
    private String user_info;

    // 유저 포인트
    private int user_point;

	public UserVO(String user_email, String user_pw, String user_nick, String user_pic, String user_info, int user_point) {
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
	}

	// 회원가입용
	public UserVO(String user_email, String user_pw, String user_nick) {
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		user_pic = "undefined.png";
		user_info = "-";
		user_point = 0;
	}
	
	// 로그인용
	public UserVO(String user_email, String user_pw) {
		this.user_email = user_email;
		this.user_pw = user_pw;
	}
	
	

	// 기본 생성자
	public UserVO() {

	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public String getUser_pic() {
		return user_pic;
	}

	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}

	public String getUserInfo() {
		return user_info;
	}

	public void setUserInfo(String user_info) {
		this.user_info = user_info;
	}

	public int getUserPoint() {
		return user_point;
	}

	public void setUserPoint(int user_point) {
		this.user_point = user_point;
	}

	@Override
	public String toString() {
		return "UserVO [user_email=" + user_email + ", user_pw=" + user_pw + ", user_nick=" + user_nick + ", user_pic="
				+ user_pic + ", user_info=" + user_info + ", user_point=" + user_point + "]";
	}	
    
}