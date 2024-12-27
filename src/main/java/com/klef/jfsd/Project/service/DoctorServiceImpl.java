package com.klef.jfsd.Project.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.klef.jfsd.Project.model.Doctor;
import com.klef.jfsd.Project.repository.DoctorRepository;

@Service
public class DoctorServiceImpl implements DoctorService
{
	@Autowired
	private DoctorRepository doctorRepository;
	

	@Override
	public String doctorRegistration(Doctor doctor) {
		doctorRepository.save(doctor);
		return "Doctor Registered Successfully";
	}


	@Override
	public Doctor checkDoctorLogin(String email, String password) {
		return doctorRepository.checkDoctorLogin(email, password);
		
	}

}
