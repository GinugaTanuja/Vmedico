package com.Vmedico.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Vmedico.model.doctor;
import com.Vmedico.repository.DoctorRepository;

@Service
@Transactional
public class DoctorService {

	private final DoctorRepository doctorRepository;

	public DoctorService(DoctorRepository doctorRepository) {
		this.doctorRepository = doctorRepository;
	}

	public void saveMyDoctor(doctor doctor) {
		doctorRepository.save(doctor);
	}

	public doctor findByDusernameAndDpassword(String dusername, String dpassword) {
		return doctorRepository.findByDusernameAndDpassword(dusername, dpassword);
	}
}
