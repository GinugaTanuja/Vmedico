package com.Vmedico.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Vmedico.model.User;
import com.Vmedico.model.admin;
import com.Vmedico.model.doctor;
import com.Vmedico.services.AdminService;
import com.Vmedico.services.DoctorService;
import com.Vmedico.services.UserService;

@Controller
public class VmedicoController {

	@Autowired
	private UserService userService;
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private AdminService adminService;

	@RequestMapping({ "/home", "/" })
	public String Home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "home";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "home";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "home";
	}

	@RequestMapping("/patientlogin")
	public String PatientLogin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_PATIENTLOGIN");
		return "home";
	}

	@RequestMapping("/login-user")
	public String LoginUser(@ModelAttribute User user, HttpServletRequest request) {
		if (userService.findByPusernameAndPpassword(user.getpusername(), user.getppassword()) != null) {
			return "patientPage";
		} else {
			request.setAttribute("error", "Invalid username or password. Please enter valid Username or Password");
			request.setAttribute("mode", "MODE_PATIENTLOGIN");
			return "home";
		}

	}

	@RequestMapping("/doctorlogin")
	public String DoctorLogin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_DOCTORLOGIN");
		return "home";
	}

	@RequestMapping("/login-doctor")
	public String LoginDoctor(@ModelAttribute doctor doctor, HttpServletRequest request) {
		if (doctorService.findByDusernameAndDpassword(doctor.getDusername(), doctor.getDpassword()) != null) {
			return "doctorPage";
		} else {
			request.setAttribute("error", "Invalid username or password. Please enter valid Username or Password");
			request.setAttribute("mode", "MODE_DOCTORLOGIN");
			return "home";
		}

	}

	@RequestMapping("/adminlogin")
	public String AdminLogin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADMINLOGIN");
		return "home";
	}

	@RequestMapping("/login-admin")
	public String LoginAdmin(@ModelAttribute admin admin, HttpServletRequest request) {
		if (adminService.findByAusernameAndApassword(admin.getAusername(), admin.getApassword()) != null) {
			return "adminPage";
		} else {
			request.setAttribute("error", "Invalid username or password. Please enter valid Username or Password");
			request.setAttribute("mode", "MODE_ADMINLOGIN");
			return "home";
		}

	}
	
	@RequestMapping("/addDoctor")
	public String addDoctor(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADDDOCTOR");
		return "adminPage";
	}

	@PostMapping("/save-doctor")
	public String registerdoctor(@ModelAttribute doctor doctor, BindingResult bindingResult, HttpServletRequest request) {
		doctorService.saveMyDoctor(doctor);
		request.setAttribute("mode", "MODE_ADDDOCTOR");
		return "adminPage";
	}
	
	@GetMapping("/show-doctors")
	public String showAllDoctors( HttpServletRequest request) {
		request.setAttribute("doctors", doctorService.showAllDotors());
		request.setAttribute("mode", "MODE_EDITDOCTOR");
		return "adminPage";
	}

	@RequestMapping("/delete-doctor")
	public String deleteDoctor(@RequestParam int duprn,HttpServletRequest request) {
		doctorService.deleteMyDoctor(duprn);
		request.setAttribute("doctors", doctorService.showAllDotors());
		request.setAttribute("mode", "MODE_EDITDOCTOR");
		return "adminPage";
	}
}
