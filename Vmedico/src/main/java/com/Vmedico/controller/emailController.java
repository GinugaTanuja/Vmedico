package com.Vmedico.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Vmedico.model.patientAppointmentForm;

@Controller
@RequestMapping("email")
public class emailController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("email", new patientAppointmentForm());
		return "Patientpage";
	}

}
