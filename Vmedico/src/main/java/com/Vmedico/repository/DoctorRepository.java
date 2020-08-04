package com.Vmedico.repository;

import org.springframework.data.repository.CrudRepository;

import com.Vmedico.model.doctor;

public interface DoctorRepository extends CrudRepository<doctor, Integer> {

	public doctor findByDuprnAndDpassword(Integer duprn, String dpassword);

}
