package com.Vmedico.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Vmedico.model.User;

import com.Vmedico.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	
	public User findByPusernameAndPpassword(String pusername, String ppassword){
		return userRepository.findByPusernameAndPpassword(pusername, ppassword);
	}
	
}
