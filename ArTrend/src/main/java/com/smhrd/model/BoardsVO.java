package com.smhrd.model;

public class BoardsVO {

	private int board_num;

	private String board_type;

	private String user_email;

	private String board_title;

	private String board_content;

	private String board_date;

	private int board_view;

	private String board_pic;
	
	public BoardsVO(String board_type, String board_title, String board_content, String board_pic) {
		this.board_type = board_type;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_pic = board_pic;
		board_num = 0;
		board_view = 0;
		user_email = "123@123.123";
	}

	// PostWriteService
	public BoardsVO(String board_type, String user_email, String board_title, String board_content, String board_pic) {
		this.board_type = board_type;
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_pic = board_pic;
		board_num = 0;
		board_view = 0;
	}

	public BoardsVO(int board_num, String board_type, String user_email, String board_title, String board_content,
			String board_date, int board_view, String board_pic) {
		this.board_num = board_num;
		this.board_type = board_type;
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.board_view = board_view;
		this.board_pic = board_pic;
	}
	
	// 게시글 수정
		public BoardsVO(int board_num, String board_type, String board_title, String board_content) {
			this.board_num = board_num;
			this.board_type = board_type;
			this.board_title = board_title;
			this.board_content = board_content;
		}
	

	public BoardsVO() {

	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getBoard_type() {
		return board_type;
	}

	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public int getBoard_view() {
		return board_view;
	}

	public void setBoard_view(int board_view) {
		this.board_view = board_view;
	}

	public String getBoard_pic() {
		return board_pic;
	}

	public void setBoard_pic(String board_pic) {
		this.board_pic = board_pic;
	}

	@Override
	public String toString() {
		return "BoardsVO [board_num=" + board_num + ", board_type=" + board_type + ", user_email=" + user_email
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_date=" + board_date
				+ ", board_view=" + board_view + ", board_pic=" + board_pic + "]";
	}
	
}