package com.Vmedico.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="patient_details")
public class User {
	@Id
	private int pid;
	private String pusername;
	private int page;
	private String pgender;
	private String pbloodgroup;
	private String paddress;
	private String pemail;
	private String pcontactno;
	private String ppassword;
	
	//default constructor
	public User() {
		
	}
	//constructor
	public User(String pusername, int page, String pgender, String pbloodgroup, String paddress, String pemail,
			String pcontactno, String ppassword) {
		super();
		this.pusername = pusername;
		this.page = page;
		this.pgender = pgender;
		this.pbloodgroup = pbloodgroup;
		this.paddress = paddress;
		this.pemail = pemail;
		this.pcontactno = pcontactno;
		this.ppassword = ppassword;
	}
	
	//getters and setters
	public int getpid() {
		return pid;
	}
	public void setpid(int pid) {
		this.pid = pid;
	}
	public String getpusername() {
		return pusername;
	}
	public void setpusername(String pusername) {
		this.pusername = pusername;
	}
	public int getpage() {
		return page;
	}
	public void setpage(int page) {
		this.page = page;
	}
	public String getpgender() {
		return pgender;
	}
	public void setpgender(String pgender) {
		this.pgender = pgender;
	}
	public String getpbloodgroup() {
		return pbloodgroup;
	}
	public void setpbloodgroup(String pbloodgroup) {
		this.pbloodgroup = pbloodgroup;
	}
	public String getpaddress() {
		return paddress;
	}
	public void setpaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getpemail() {
		return pemail;
	}
	public void setpemail(String pemail) {
		this.pemail = pemail;
	}
	public String getpcontactno() {
		return pcontactno;
	}
	public void setpcontactno(String pcontactno) {
		this.pcontactno = pcontactno;
	}
	public String getppassword() {
		return ppassword;
	}
	public void setppassword(String ppassword) {
		this.ppassword = ppassword;
	}

	@Override
	public String toString() {
		return "User [pid=" + pid + ", pusername=" + pusername + ", page=" + page + ", pgender=" + pgender
				+ ", pbloodgroup=" + pbloodgroup + ", paddress=" + paddress + ", pemail=" + pemail + ", pcontactno="
				+ pcontactno + ", ppassword=" + ppassword + "]";
	}
	
	
	
	
}
