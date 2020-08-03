package com.Vmedico.services;

import java.util.ArrayList;
import java.util.List;

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

	public doctor updateDoctor(int duprn) {
		doctor doctor = doctorRepository.findById(duprn).get();
		return doctor;
		
	}
	
	public List<doctor> showAllDotors() {
		List<doctor> doctors = new ArrayList<doctor>();
		for (doctor doctor : doctorRepository.findAll()) {
			doctors.add(doctor);
		}
		return doctors;
	}

	public void deleteMyDoctor(int duprn) {
		doctorRepository.deleteById(duprn);
	}

	public doctor findByDusernameAndDpassword(String dusername, String dpassword) {
		return doctorRepository.findByDusernameAndDpassword(dusername, dpassword);
	}

}
