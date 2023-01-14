package com.smhrd.model;

public class SubscribeVO {

	// 구독 번호
    private int subscribe_num;

    // 유저 이메일 
    private String user_email;

    // 구독 유저 이메일 
    private String subscriber_email;
    

	public SubscribeVO(int subscribe_num, String user_email, String subscriber_email) {
		subscribe_num = 0;
		this.user_email = user_email;
		this.subscriber_email = subscriber_email;
	}
	
	

	public SubscribeVO(String user_email, String subscriber_email) {
		super();
		this.user_email = user_email;
		this.subscriber_email = subscriber_email;
	}




	public SubscribeVO() {
		super();
	}



	@Override
	public String toString() {
		return "SubscribeVO [subscribe_num=" + subscribe_num + ", user_email=" + user_email + ", subscriber_email="
				+ subscriber_email + "]";
	}



	public int getSubscribe_num() {
		return subscribe_num;
	}



	public String getUser_email() {
		return user_email;
	}



	public String getSubscriber_email() {
		return subscriber_email;
	}



	public void setSubscribe_num(int subscribe_num) {
		this.subscribe_num = subscribe_num;
	}



	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}



	public void setSubscriber_email(String subscriber_email) {
		this.subscriber_email = subscriber_email;
	}





	
    
    
}
