package com.klef.jfsd.Project.service;

import com.klef.jfsd.Project.model.Doctor;

public interface DoctorService {
    String doctorRegistration(Doctor doctor); 
    Doctor checkDoctorLogin(String email, String password);
}
