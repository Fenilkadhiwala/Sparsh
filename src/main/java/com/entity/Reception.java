package com.entity;

public class Reception {

	private int rid;
	private String rname;
	private String rpassword;
	private String rphone;
	private String remail;

	public Reception(String rname, String rpassword, String rphone, String remail) {
		super();
//		this.rid = rid;
		this.rname = rname;
		this.rpassword = rpassword;
		this.rphone = rphone;
		this.remail = remail;
	}

	public Reception(int rid) {
		super();
		this.rid = rid;
		
	}

	
	public Reception() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getRid() {
		return rid;
	}
	
	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRpassword() {
		return rpassword;
	}

	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}

	public String getRphone() {
		return rphone;
	}

	public void setRphone(String rphone) {
		this.rphone = rphone;
	}

	public String getRemail() {
		return remail;
	}

	public void setRemail(String remail) {
		this.remail = remail;
	}

}
