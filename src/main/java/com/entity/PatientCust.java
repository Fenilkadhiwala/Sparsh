package com.entity;

public class PatientCust {
	
	private int pid;
	private String pname;
	private String ppassword;
	private String pphone;
	private String pemail;
	public PatientCust(String pname, String ppassword, String pphone, String pemail) {
		super();
//		this.pid = pid;
		this.pname = pname;
		this.ppassword = ppassword;
		this.pphone = pphone;
		this.pemail = pemail;
	}
	public PatientCust() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public PatientCust(int pid) {
		super();
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPpassword() {
		return ppassword;
	}
	public void setPpassword(String ppassword) {
		this.ppassword = ppassword;
	}
	public String getPphone() {
		return pphone;
	}
	public void setPphone(String pphone) {
		this.pphone = pphone;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	
	

}
