package com.Vmedico.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Vmedico.model.PrescriptionAndAppointment;
import com.Vmedico.services.PrescriptionAndAppointmentService;

@Controller
public class emailController {

	@Autowired
	JavaMailSender JavaMailSender;

	@Autowired
	PrescriptionAndAppointmentService prescriptionAndAppointmentService;
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

	@RequestMapping("/assignPrescription")
	public String assignPrescription(@RequestParam("patientemail") String patientemail,
			@RequestParam("patientusername") String patientusername,
			@RequestParam("doctorusername") String doctorusername, @RequestParam("doctoremail") String doctoremail,
			@RequestParam("hospitalname") String hospitalname,
			@RequestParam("patientprescription") String patientprescription,
			@RequestParam("patientnextslot") String patientnextslot,
			@RequestParam("patientnextappointmentdate") String patientnextappointmentdate,
			@ModelAttribute PrescriptionAndAppointment prescriptionAndAppointment, BindingResult bindingResult, HttpServletRequest request) {

		request.setAttribute("mode", "MODE_PRESCRIBE");
		prescriptionAndAppointmentService.savePrescriptionAndAppointment(prescriptionAndAppointment);
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(patientemail);
		msg.setFrom(doctoremail);
		msg.setSubject(patientusername + "'s prescription");
		msg.setText("dear " + patientusername + ", \n\n" + "  You have been prescribed by " + doctorusername
				+ " to take the following: \n" + patientprescription + "\n" + "  Your next appontment with "
				+ doctorusername + " has been booked at " + patientnextslot + " slot on " + patientnextappointmentdate
				+ ".\n\n" + "  Hope to see you at " + hospitalname + " for yor next appointment.\n\n"
				+ " Take care,\n Team Vmedio");
		JavaMailSender.send(msg);
		
		return "doctorPage";
	}

	

}
