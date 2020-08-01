package com.Vmedico.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctor_details")
public class doctor {
	@Id
	private int duprn;
	private String dusername;
	private int  dage;
	private String dgender;
	private String dspecialization;
	private int dworkinghospitalid;
	private String daddress;
	private String demail;
	private String dcontactno;
	private String dpassword;
	
	//default constructor
	public doctor() {
		
	}
	
	
	//constructor
	public doctor(int duprn, String dusername, int dage, String dgender, String dspecialization, int dworkinghospitalid,
			String daddress, String demail, String dcontactno, String dpassword) {
		super();
		this.duprn = duprn;
		this.dusername = dusername;
		this.dage = dage;
		this.dgender = dgender;
		this.dspecialization = dspecialization;
		this.dworkinghospitalid = dworkinghospitalid;
		this.daddress = daddress;
		this.demail = demail;
		this.dcontactno = dcontactno;
		this.dpassword = dpassword;
	}
	
	
	//getter n setter
	public int getDuprn() {
		return duprn;
	}
	public void setDuprn(int duprn) {
		this.duprn = duprn;
	}
	public String getDusername() {
		return dusername;
	}
	public void setDusername(String dusername) {
		this.dusername = dusername;
	}
	public int getDage() {
		return dage;
	}
	public void setDage(int dage) {
		this.dage = dage;
	}
	public String getDgender() {
		return dgender;
	}
	public void setDgender(String dgender) {
		this.dgender = dgender;
	}
	public String getDspecialization() {
		return dspecialization;
	}
	public void setDspecialization(String dspecialization) {
		this.dspecialization = dspecialization;
	}
	public int getDworkinghospitalid() {
		return dworkinghospitalid;
	}
	public void setDworkinghospitalid(int dworkinghospitalid) {
		this.dworkinghospitalid = dworkinghospitalid;
	}
	public String getDaddress() {
		return daddress;
	}
	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}
	public String getDemail() {
		return demail;
	}
	public void setDemail(String demail) {
		this.demail = demail;
	}
	public String getDcontactno() {
		return dcontactno;
	}
	public void setDcontactno(String dcontactno) {
		this.dcontactno = dcontactno;
	}
	public String getDpassword() {
		return dpassword;
	}
	public void setDpassword(String dpassword) {
		this.dpassword = dpassword;
	}


	@Override
	public String toString() {
		return "doctor [duprn=" + duprn + ", dusername=" + dusername + ", dage=" + dage + ", dgender=" + dgender
				+ ", dspecialization=" + dspecialization + ", dworkinghospitalid=" + dworkinghospitalid + ", daddress="
				+ daddress + ", demail=" + demail + ", dcontactno=" + dcontactno + ", dpassword=" + dpassword + "]";
	}
	
	
	
}
