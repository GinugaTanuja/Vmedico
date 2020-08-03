package com.Vmedico.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Vmedico.model.admin;
import com.Vmedico.repository.AdminRepository;

@Service
@Transactional
public class AdminService {
	private final AdminRepository adminRepository;
	public AdminService(AdminRepository adminRepository) {
		this.adminRepository = adminRepository;
	}
	
	public void saveMyAdmin(admin admin) {
		adminRepository.save(admin);
	}
	
	public admin findByAusernameAndApassword(String ausername, String apassword) {
		return adminRepository.findByAusernameAndApassword(ausername, apassword);
	}
}
