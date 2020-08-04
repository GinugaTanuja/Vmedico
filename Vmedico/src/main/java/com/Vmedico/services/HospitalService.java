package com.Vmedico.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Vmedico.model.hospital;
import com.Vmedico.repository.HospitalRepository;

@Service
@Transactional
public class HospitalService {
	private final HospitalRepository HospitalRepository;

	public HospitalService(HospitalRepository HospitalRepository) {
		this.HospitalRepository = HospitalRepository;
	}

	public void saveMyHospital(hospital hospital) {
		HospitalRepository.save(hospital);
	}

	public hospital updateHospital(int hid) {
		hospital hospital = HospitalRepository.findById(hid).get();
		return hospital;

	}

	public List<hospital> showAllHospitals() {
		List<hospital> hospitals = new ArrayList<hospital>();
		for (hospital hospital : HospitalRepository.findAll()) {
			hospitals.add(hospital);
		}
		return hospitals;
	}

	public void deleteMyHospital(int hid) {
		HospitalRepository.deleteById(hid);
	}
}
