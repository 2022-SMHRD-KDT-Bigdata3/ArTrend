package com.smhrd.model;

public class JoinVO {
	
	// users
	private String user_email;
    private String user_pw;
    private String user_nick;
    private String user_pic;
    
    // boards
    private int board_num;
    private String board_type;
    //user_email;
    private String board_title;
    private String board_content;
    private String board_date;
    private int board_view;
    private String board_pic;
    
    
    // likes 
    private String liker_nick;
    
    public JoinVO(String user_email, String user_pw, String user_nick, String user_pic, int board_num,
    		String board_type, String board_title, String board_content, String board_date, int board_view,
    		String board_pic) {
    	super();
    	this.user_email = user_email;
    	this.user_pw = user_pw;
    	this.user_nick = user_nick;
    	this.user_pic = user_pic;
    	this.board_num = board_num;
    	this.board_type = board_type;
    	this.board_title = board_title;
    	this.board_content = board_content;
    	this.board_date = board_date;
    	this.board_view = board_view;
    	this.board_pic = board_pic;
    }

    // 게시글 모든 정보 + 유저 닉네임
	public JoinVO(String user_email, String user_nick, int board_num, String board_type, String board_title,
			String board_content, String board_date, int board_view, String board_pic) {
		super();
		this.user_email = user_email;
		this.user_nick = user_nick;
		this.board_num = board_num;
		this.board_type = board_type;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.board_view = board_view;
		this.board_pic = board_pic;
	}

	
	// 좋아요 목록 불러오기
	public JoinVO(String user_email, int board_num, String liker_nick) {
		super();
		this.user_email = user_email;
		this.board_num = board_num;
		this.liker_nick = liker_nick;
	}
	
	// 좋아요 목록 닉네임 불러오기
	public JoinVO(String liker_nick) {
		super();
		this.user_nick = liker_nick;
	}
	
	// post_view 프로필 사진 적용
	public JoinVO(String user_email, String user_pic, String user_nick, int board_num, String board_type, String board_title,
			String board_content, String board_date, int board_view, String board_pic) {
		super();
		this.user_pic = user_pic;
		this.user_email = user_email;
		this.user_nick = user_nick;
		this.board_num = board_num;
		this.board_type = board_type;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.board_view = board_view;
		this.board_pic = board_pic;
	}

	
	public JoinVO(String user_email, String user_pw, String user_nick, String user_pic, int board_num,
			String board_type, String board_title, String board_content, String board_date, int board_view,
			String board_pic, String liker_nick) {
		super();
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_pic = user_pic;
		this.board_num = board_num;
		this.board_type = board_type;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.board_view = board_view;
		this.board_pic = board_pic;
		this.liker_nick = liker_nick;
	}
	
	

	public JoinVO() {
		super();
	}

	public String getLiker_nick() {
		return liker_nick;
	}

	public void setLiker_nick(String liker_nick) {
		this.liker_nick = liker_nick;
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
		return "JoinVO [user_email=" + user_email + ", user_pw=" + user_pw + ", user_nick=" + user_nick + ", user_pic="
				+ user_pic + ", board_num=" + board_num + ", board_type=" + board_type + ", board_title=" + board_title
				+ ", board_content=" + board_content + ", board_date=" + board_date + ", board_view=" + board_view
				+ ", board_pic=" + board_pic + ", liker_nick=" + liker_nick + "]";
	}


}
   