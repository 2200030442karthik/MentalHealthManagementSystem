package com.klef.jfsd.Project.service;

import com.klef.jfsd.Project.model.Patient;

public interface PatientService {
    String patientRegistration(Patient patient);
    Patient checkPatientLogin(String email, String password);
}
