package com.entity;

public class Appointment {
	
	private int aid;
	private String aname;
	private String aemail;
	private String aphone;
	private String atype;
	private String adate;
	private String atime;
	private String atext;
	
	public Appointment(String aname, String aemail, String aphone, String atype, String adate, String atime,
			String atext) {
		super();
		this.aname = aname;
		this.aemail = aemail;
		this.aphone = aphone;
		this.atype = atype;
		this.adate = adate;
		this.atime = atime;
		this.atext = atext;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getAphone() {
		return aphone;
	}
	public void setAphone(String aphone) {
		this.aphone = aphone;
	}
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	public String getAtime() {
		return atime;
	}
	public void setAtime(String atime) {
		this.atime = atime;
	}
	public String getAtext() {
		return atext;
	}
	public void setAtext(String atext) {
		this.atext = atext;
	}
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
