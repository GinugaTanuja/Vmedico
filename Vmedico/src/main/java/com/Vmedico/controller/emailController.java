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
	public String sendMail(@RequestParam("pusername") String pusername, @RequestParam("pemail") String pemail,
			@RequestParam("pslot") String pslot, @RequestParam("pappointmentdate") String pappointmentdate,
			@RequestParam("phospitalname") String phospitalname) {
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(pemail);
		msg.setSubject(pusername + "'s appointment");
		msg.setText("Dear " + pusername + ",\n" + "Your appointment has been booked at " + pslot + " on " + pappointmentdate + ".\n" + "Hope to see you at " + phospitalname+".\n"+"Take care,\nTeam Vmedico");
		JavaMailSender.send(msg);
		return "patientPage";
	}
}
