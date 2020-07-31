package com.Vmedico.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.Vmedico.model.User;
import com.Vmedico.services.UserService;

@Controller
public class VmedicoController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping({"/home","/"})
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
		if(userService.findByPusernameAndPpassword(user.getpusername(), user.getppassword())!=null){
			return "patientPage";
		}
		else {
			request.setAttribute("error", "Invalid username or password. Please enter valid Username or Password");
			request.setAttribute("mode", "MODE_PATIENTLOGIN");
			return "home";
		}
		
	}
}
