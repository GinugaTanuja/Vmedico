package com.Vmedico.repository;

import org.springframework.data.repository.CrudRepository;

import com.Vmedico.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	public User findByPusernameAndPpassword(String pusername, String ppassword);

}
