package com.smhrd.model;

public class LikesVO {
	
    // 게시글 번호
    private int board_num;

    // 좋아요 누른 유저의 이메일
    private String user_email;
    
    // 좋아요 누른 유저의 닉네임
    private String liker_nick;

	public LikesVO(int board_num, String user_email, String liker_nick) {
		super();
		this.board_num = board_num;
		this.user_email = user_email;
		this.liker_nick = liker_nick;
	}

	public LikesVO(int board_num, String user_email) {
		super();
		this.board_num = board_num;
		this.user_email = user_email;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	
	
	public String getLiker_nick() {
		return liker_nick;
	}

	public void setLiker_nick(String liker_nick) {
		this.liker_nick = liker_nick;
	}

	@Override
	public String toString() {
		return "LikesVO [board_num=" + board_num + ", user_email=" + user_email + ", liker_nick=" + liker_nick + "]";
	}

	

    
    
}
