package com.finalproject.market.dto;

public class userinfo {

	int user_Seqno;
	String user_Id;
	String user_Password;
	String user_Name;
	String user_Telno;
	String user_Telno2;
	String user_Telno3;
	String user_Email1;
	String user_Email2;
	String user_Address1;
	String user_Address2;
	String user_Address3;
	String user_Addresszipcode;
	
	
	public userinfo() {
		
	}
	
	
	

	

	public userinfo(String user_Id) {
		super();
		this.user_Id = user_Id;
	}






	public userinfo(int user_Seqno, String user_Id) {
		super();
		this.user_Seqno = user_Seqno;
		this.user_Id = user_Id;
	}

	public userinfo(String user_Id, String user_Password) {
		super();
		this.user_Id = user_Id;
		this.user_Password = user_Password;
	}

	public userinfo(String user_Id, String user_Password, String user_Name, String user_Telno, String user_Telno2,
			String user_Telno3, String user_Email1, String user_Email2, String user_Address1, String user_Address2,
			String user_Address3, String user_Addresszipcode) {
		super();
		this.user_Id = user_Id;
		this.user_Password = user_Password;
		this.user_Name = user_Name;
		this.user_Telno = user_Telno;
		this.user_Telno2 = user_Telno2;
		this.user_Telno3 = user_Telno3;
		this.user_Email1 = user_Email1;
		this.user_Email2 = user_Email2;
		this.user_Address1 = user_Address1;
		this.user_Address2 = user_Address2;
		this.user_Address3 = user_Address3;
		this.user_Addresszipcode = user_Addresszipcode;
		
//		String[] str = user_Email1.split("@"); ���ø�(�迭 �ڸ���)
	}



	public int getUser_Seqno() {
		return user_Seqno;
	}



	public void setUser_Seqno(int user_Seqno) {
		this.user_Seqno = user_Seqno;
	}



	public String getUser_Id() {
		return user_Id;
	}



	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}



	public String getUser_Password() {
		return user_Password;
	}



	public void setUser_Password(String user_Password) {
		this.user_Password = user_Password;
	}



	public String getUser_Name() {
		return user_Name;
	}



	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}



	public String getUser_Telno() {
		return user_Telno;
	}



	public void setUser_Telno(String user_Telno) {
		this.user_Telno = user_Telno;
	}



	public String getUser_Telno2() {
		return user_Telno2;
	}



	public void setUser_Telno2(String user_Telno2) {
		this.user_Telno2 = user_Telno2;
	}



	public String getUser_Telno3() {
		return user_Telno3;
	}



	public void setUser_Telno3(String user_Telno3) {
		this.user_Telno3 = user_Telno3;
	}



	public String getUser_Email1() {
		return user_Email1;
	}



	public void setUser_Email1(String user_Email1) {
		this.user_Email1 = user_Email1;
	}



	public String getUser_Email2() {
		return user_Email2;
	}



	public void setUser_Email2(String user_Email2) {
		this.user_Email2 = user_Email2;
	}



	public String getUser_Address1() {
		return user_Address1;
	}



	public void setUser_Address1(String user_Address1) {
		this.user_Address1 = user_Address1;
	}



	public String getUser_Address2() {
		return user_Address2;
	}



	public void setUser_Address2(String user_Address2) {
		this.user_Address2 = user_Address2;
	}



	public String getUser_Address3() {
		return user_Address3;
	}



	public void setUser_Address3(String user_Address3) {
		this.user_Address3 = user_Address3;
	}



	public String getUser_Addresszipcode() {
		return user_Addresszipcode;
	}



	public void setUser_Addresszipcode(String user_Addresszipcode) {
		this.user_Addresszipcode = user_Addresszipcode;
	}
	




	
	
	
}
