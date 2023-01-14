package com.smhrd.model;

public class SupportVO {
	
	// 서포트 물품 번호
    private int gift_num;

    // 유저 이메일 
    private String user_email;

    // 서포트 물품 제목
    private String gift_title;

    // 서포트 물품 사진
    private String gift_pic;

    // 서포트 물품 내용
    private String gift_content;
    
    
	@Override
	public String toString() {
		return "SupportVO [gift_num=" + gift_num + ", user_email=" + user_email + ", gift_title=" + gift_title
				+ ", gift_pic=" + gift_pic + ", gift_content=" + gift_content + "]";
	}

	public SupportVO() {
		super();
	}

	
	public SupportVO(String user_email, String gift_title, String gift_pic, String gift_content) {
		
		this.user_email = user_email;
		this.gift_title = gift_title;
		this.gift_pic = gift_pic;
		this.gift_content = gift_content;
	}

	public SupportVO(int gift_num, String user_email, String gift_title, String gift_pic, String gift_content) {
		super();
		this.gift_num = gift_num;
		this.user_email = user_email;
		this.gift_title = gift_title;
		this.gift_pic = gift_pic;
		this.gift_content = gift_content;
	}

	public int getGift_num() {
		return gift_num;
	}

	public String getUser_email() {
		return user_email;
	}

	public String getGift_title() {
		return gift_title;
	}

	public String getGift_pic() {
		return gift_pic;
	}

	public String getGift_content() {
		return gift_content;
	}

	public void setGift_num(int gift_num) {
		this.gift_num = gift_num;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public void setGift_title(String gift_title) {
		this.gift_title = gift_title;
	}

	public void setGift_pic(String gift_pic) {
		this.gift_pic = gift_pic;
	}

	public void setGift_content(String gift_content) {
		this.gift_content = gift_content;
	}
    
   

    
    
}
