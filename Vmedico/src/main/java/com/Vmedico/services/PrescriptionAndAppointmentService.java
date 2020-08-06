package com.Vmedico.services;

import java.util.ArrayList;
import java.util.List;

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
	
	public List<PrescriptionAndAppointment> showMyPrescription(String patientusername) {
		List<PrescriptionAndAppointment> prescriptionAndAppointments = new ArrayList<PrescriptionAndAppointment>();
		for (PrescriptionAndAppointment prescriptionAndAppointment : prescriptionAndAppointmentRepository.findByPatientusername(patientusername)) {
			prescriptionAndAppointments.add(prescriptionAndAppointment);
		}
		return prescriptionAndAppointments;
	}
}
