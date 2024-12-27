package com.klef.jfsd.Project.service;

import com.klef.jfsd.Project.model.Patient;

import com.klef.jfsd.Project.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientRepository patientRepository;
    
    
    @Override
    public String patientRegistration(Patient patient) {
        patientRepository.save(patient);
        return "Patient Registered Successfully";
    }

    @Override
    public Patient checkPatientLogin(String email, String password) {
        return patientRepository.checkPatientLogin(email, password);
    }

    
}
