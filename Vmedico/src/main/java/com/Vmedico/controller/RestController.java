package com.Vmedico.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Vmedico.model.User;
import com.Vmedico.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;

	/*@GetMapping("/home")
	public String Home() {
		return "Rest con";
	}*/
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String pusername,@RequestParam int page, @RequestParam String pgender, @RequestParam String pbloodgroup, @RequestParam String paddress, @RequestParam String pemail, @RequestParam String pcontactno, @RequestParam String ppassword) {
		
		User user = new User(pusername, page, pgender, pbloodgroup, paddress, pemail, pcontactno, ppassword);
		userService.saveMyUser(user);
		return "User Saved";
	}
}
