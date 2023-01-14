package com.smhrd.model;

public class MessageVO {

	 private String msg_num; 
	 private String send_email; 
	 private String receive_email;
	 private String contents; 
	 private String day;
	 
	public MessageVO(String msg_num, String send_email, String receive_email, String contents, String day) {
		super();
		this.msg_num = msg_num;
		this.send_email = send_email;
		this.receive_email = receive_email;
		this.contents = contents;
		this.day = day;
	}
	
	// 나에게 온 메세지 확인용
	public MessageVO(String receive_email) {
		super();
		this.receive_email = receive_email;
	}



	public MessageVO() {
		super();
	}

	public String getMsg_num() {
		return msg_num;
	}

	public void setMsg_num(String msg_num) {
		this.msg_num = msg_num;
	}

	public String getSend_email() {
		return send_email;
	}

	public void setSend_email(String send_email) {
		this.send_email = send_email;
	}

	public String getReceive_email() {
		return receive_email;
	}

	public void setReceive_email(String receive_email) {
		this.receive_email = receive_email;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Override
	public String toString() {
		return "MessageVO [msg_num=" + msg_num + ", send_email=" + send_email + ", receive_email=" + receive_email
				+ ", contents=" + contents + ", day=" + day + "]";
	}
	
    
		
}
