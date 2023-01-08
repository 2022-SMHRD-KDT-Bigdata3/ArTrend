package com.smhrd.model;

public class LikesVO {
	
	// 좋아요 번호
    private int like_num;

    // 게시글 번호
    private int board_num;

    // 좋아요 누른 유저의 이메일
    private String user_email;

	public LikesVO(int like_num, int board_num, String user_email) {
		super();
		this.like_num = like_num;
		this.board_num = board_num;
		this.user_email = user_email;
	}

	public LikesVO() {
		super();
	}	

	public int getLike_num() {
		return like_num;
	}

	public void setLike_num(int like_num) {
		this.like_num = like_num;
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

	@Override
	public String toString() {
		return "LikesVO [like_num=" + like_num + ", board_num=" + board_num + ", user_email=" + user_email + "]";
	}
    

}
