package com.entity;

public class Patient {
	
	private int pid;
	private int rid;
	private String pfname;
	private String plname;
	private String pemail;
	private String pphone;
	private String pdate;
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Patient(String pfname, String plname, String pemail, String pphone,String pdate) {
		super();
		this.pfname = pfname;
		this.plname = plname;
		this.pemail = pemail;
		this.pphone = pphone;
		this.pdate = pdate;
//		this.rid = rid;
	}

	
	public Patient(int rid) {
		super();
		this.rid = rid;
	}
	
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public Patient(int pid,String pfname, String plname, String pemail, String pphone) {
		super();
		this.pid = pid;
		this.pfname = pfname;
		this.plname = plname;
		this.pemail = pemail;
		this.pphone = pphone;
	}
	
	
	public int getPid() {
		return pid;
	}
	
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String getPfname() {
		return pfname;
	}
	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	public String getPlname() {
		return plname;
	}
	public void setPlname(String plname) {
		this.plname = plname;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public String getPphone() {
		return pphone;
	}
	public void setPphone(String pphone) {
		this.pphone = pphone;
	}

}
