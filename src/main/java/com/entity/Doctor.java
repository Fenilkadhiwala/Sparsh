package com.entity;

public class Doctor {
	
	private int did;
	private String dname;
	private String dpassword;
	private String dphone;
	private String demail;
	
	public Doctor(String dname, String dpassword, String dphone, String demail) {
		super();
//		this.did = did;
		this.dname = dname;
		this.dpassword = dpassword;
		this.dphone = dphone;
		this.demail = demail;
	}
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
//	public int getDid() {
//		return did;
//	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDpassword() {
		return dpassword;
	}
	public void setDpassword(String dpassword) {
		this.dpassword = dpassword;
	}
	public String getDphone() {
		return dphone;
	}
	public void setDphone(String dphone) {
		this.dphone = dphone;
	}
	public String getDemail() {
		return demail;
	}
	public void setDemail(String demail) {
		this.demail = demail;
	}
	
	
	

}
