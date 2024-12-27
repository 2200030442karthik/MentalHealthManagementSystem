package com.klef.jfsd.Project.service;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.Project.model.Admin;
import com.klef.jfsd.Project.model.Doctor;
import com.klef.jfsd.Project.model.Patient;
import com.klef.jfsd.Project.repository.AdminRepository;
import com.klef.jfsd.Project.repository.DoctorRepository;
import com.klef.jfsd.Project.repository.PatientRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private PatientRepository patientRepository;
	
	@Autowired
	private DoctorRepository doctorRepository;
	
	
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	
	
	@Override
	public List<Patient> viewAllpatients() {
		return patientRepository.findAll();
	}
	@Override
	public List<Doctor> viewAlldoctors() {
		return doctorRepository.findAll();
	}
	

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
		
	}

	@Override
	public long patientcount() {
		return patientRepository.count();
	}
	
	@Override
	public long doctorcount() {
		return doctorRepository.count();
	}


}
