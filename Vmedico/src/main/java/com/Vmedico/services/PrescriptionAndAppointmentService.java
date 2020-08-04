package com.Vmedico.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Vmedico.model.PrescriptionAndAppointment;
import com.Vmedico.repository.PrescriptionAndAppointmentRepository;

@Service
@Transactional
public class PrescriptionAndAppointmentService {

	private final PrescriptionAndAppointmentRepository prescriptionAndAppointmentRepository;

	public PrescriptionAndAppointmentService(PrescriptionAndAppointmentRepository prescriptionAndAppointmentRepository) {
		this.prescriptionAndAppointmentRepository =prescriptionAndAppointmentRepository;
	}

	public void savePrescriptionAndAppointment(PrescriptionAndAppointment prescriptionAndAppointment) {
		prescriptionAndAppointmentRepository.save(prescriptionAndAppointment);
	}
}
