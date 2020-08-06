package com.Vmedico.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.Vmedico.model.PrescriptionAndAppointment;


public interface PrescriptionAndAppointmentRepository extends CrudRepository<PrescriptionAndAppointment, Integer>{


	public List<PrescriptionAndAppointment> findByPatientusername(String patientusername);
}
