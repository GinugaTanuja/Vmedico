package com.Vmedico.repository;

import org.springframework.data.repository.CrudRepository;

import com.Vmedico.model.admin;

public interface AdminRepository extends CrudRepository<admin, Integer> {

	public admin findByAusernameAndApassword(String ausername, String apassword);
}
