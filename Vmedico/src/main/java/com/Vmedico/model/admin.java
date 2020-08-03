package com.Vmedico.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_details")
public class admin {
	@Id
	private String ausername;
	private String apassword;

	// defaut constructor
	public admin() {

	}

	// getter and setter

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	@Override
	public String toString() {
		return "admin [ausername=" + ausername + ", apassword=" + apassword + "]";
	}
	
	
	

}
