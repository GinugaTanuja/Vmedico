package com.Vmedico.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hospital_details")
public class hospital {

	@Id
	private int hid;
	private String hname;
	private String haddress;
	private String hemail;
	private String hcontactno;
	private String hpassword;

	// default constructor
	public hospital() {

	}

   //constructor
	public hospital(int hid, String hname, String haddress, String hemail, String hcontactno, String hpassword) {
		super();
		this.hid = hid;
		this.hname = hname;
		this.haddress = haddress;
		this.hemail = hemail;
		this.hcontactno = hcontactno;
		this.hpassword = hpassword;
	}

	// getters and setters
	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHaddress() {
		return haddress;
	}

	public void setHaddress(String haddress) {
		this.haddress = haddress;
	}

	public String getHemail() {
		return hemail;
	}

	public void setHemail(String hemail) {
		this.hemail = hemail;
	}

	public String getHcontactno() {
		return hcontactno;
	}

	public void setHcontactno(String hcontactno) {
		this.hcontactno = hcontactno;
	}

	public String getHpassword() {
		return hpassword;
	}

	public void setHpassword(String hpassword) {
		this.hpassword = hpassword;
	}

	@Override
	public String toString() {
		return "hospital [hid=" + hid + ", hname=" + hname + ", haddress=" + haddress + ", hemail=" + hemail
				+ ", hcontactno=" + hcontactno + ", hpassword=" + hpassword + "]";
	}

}
