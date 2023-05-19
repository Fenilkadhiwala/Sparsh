package com.entity;

public class Schedule {
	private int sid;
	private String stype;
	private String sdate;
	private String stime;
	private String stext;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getStext() {
		return stext;
	}
	public void setStext(String stext) {
		this.stext = stext;
	}
	public Schedule() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Schedule(String stype, String sdate, String stime, String stext) {
		super();
		this.stype = stype;
		this.sdate = sdate;
		this.stime = stime;
		this.stext = stext;
	}
}
