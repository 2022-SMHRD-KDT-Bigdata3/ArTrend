package com.smhrd.model;

public class CmtVO {

	private int cmt_num;
	
	private int board_num;
	
	private String user_email;
	
	private String cmt_content;
	
	private String cmt_date;

	public CmtVO() {

	}

	public CmtVO(int cmt_num, int board_num, String user_email, String cmt_content, String cmt_date) {
		this.cmt_num = cmt_num;
		this.board_num = board_num;
		this.user_email = user_email;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		
	}

	public CmtVO(int board_num, String user_email, String cmt_content) {
		
		this.board_num = board_num;
		this.user_email = user_email;
		this.cmt_content = cmt_content;
		
	}

	public int getCmt_num() {
		return cmt_num;
	}

	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
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

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}

	@Override
	public String toString() {
		return "CmtVO [cmt_num=" + cmt_num + ", board_num=" + board_num + ", user_email=" + user_email
				+ ", cmt_content=" + cmt_content + ", cmt_date=" + cmt_date + "]";
	}
	
}
