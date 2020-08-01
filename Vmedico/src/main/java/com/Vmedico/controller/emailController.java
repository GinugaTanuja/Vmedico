package com.Vmedico.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class emailController {

	@Autowired
	JavaMailSender JavaMailSender;

	@RequestMapping("/email")
	public String showForm() {
		return "FormSendMail";
	}

	@RequestMapping("/send")
	public String sendMail(@RequestParam("patientemail") String patientemail,
			@RequestParam("patientusername") String patientusername,
			@RequestParam("patientsymptoms") String patientsymptoms,
			@RequestParam("patienthospitalname") String patienthospitalname,
			@RequestParam("patientdoctorname") String patientdoctorname,
			@RequestParam("patientslot") String patientslot,
			@RequestParam("patientappointmentdate") String patientappointmentdate) {
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(patientemail);
		msg.setSubject(patientusername + "'s appointment");
		msg.setText("dear " + patientusername + ", \n\n" + "  Your appontment with " + patientdoctorname
				+ " has been booked at " + patientslot + " on " + patientappointmentdate + ".\n\n"
				+ "  Hope to see you at " + patienthospitalname + ".\n\n" + " Take care,\n Team Vmedio");
		JavaMailSender.send(msg);
		return "patientPage";
	}
}
