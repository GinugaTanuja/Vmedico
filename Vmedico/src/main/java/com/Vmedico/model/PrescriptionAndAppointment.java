package com.Vmedico.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prescription_appointment_deatils")
public class PrescriptionAndAppointment {
	@Id
	private int prescriptionid;
	private String patientusername;
	private String patientemail;
	private String doctorusername;
	private String doctoremail;
	private String hospitalname;
	private String patientprescription;
	private String patientnextslot;
	private String patientnextappointmentdate;
	
	//default constructor
	public PrescriptionAndAppointment() {
		
	}
	//constructor
	public PrescriptionAndAppointment(int prescriptionid, String patientusername, String patientemail,
			String doctorusername, String doctoremail, String hospitalname, String patientprescription,
			String patientnextslot, String patientnextappointmentdate) {
		super();
		this.prescriptionid = prescriptionid;
		this.patientusername = patientusername;
		this.patientemail = patientemail;
		this.doctorusername = doctorusername;
		this.doctoremail = doctoremail;
		this.hospitalname = hospitalname;
		this.patientprescription = patientprescription;
		this.patientnextslot = patientnextslot;
		this.patientnextappointmentdate = patientnextappointmentdate;
	}
	
	
	
	//getter and setter
	public int getPrescriptionid() {
		return prescriptionid;
	}
	public void setPrescriptionid(int prescriptionid) {
		this.prescriptionid = prescriptionid;
	}
	public String getPatientusername() {
		return patientusername;
	}
	public void setPatientusername(String patientusername) {
		this.patientusername = patientusername;
	}
	public String getPatientemail() {
		return patientemail;
	}
	public void setPatientemail(String patientemail) {
		this.patientemail = patientemail;
	}
	public String getDoctorusername() {
		return doctorusername;
	}
	public void setDoctorusername(String doctorusername) {
		this.doctorusername = doctorusername;
	}
	public String getDoctoremail() {
		return doctoremail;
	}
	public void setDoctoremail(String doctoremail) {
		this.doctoremail = doctoremail;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public String getPatientprescription() {
		return patientprescription;
	}
	public void setPatientprescription(String patientprescription) {
		this.patientprescription = patientprescription;
	}
	public String getPatientnextslot() {
		return patientnextslot;
	}
	public void setPatientnextslot(String patientnextslot) {
		this.patientnextslot = patientnextslot;
	}
	public String getPatientnextappointmentdate() {
		return patientnextappointmentdate;
	}
	public void setPatientnextappointmentdate(String patientnextappointmentdate) {
		this.patientnextappointmentdate = patientnextappointmentdate;
	}
	
	
	@Override
	public String toString() {
		return "PrescriptionAndAppointment [prescriptionid=" + prescriptionid + ", patientusername=" + patientusername
				+ ", patientemail=" + patientemail + ", doctorusername=" + doctorusername + ", doctoremail="
				+ doctoremail + ", hospitalname=" + hospitalname + ", patientprescription=" + patientprescription
				+ ", patientnextslot=" + patientnextslot + ", patientnextappointmentdate=" + patientnextappointmentdate
				+ "]";
	}
	
	
	
	
	
}
