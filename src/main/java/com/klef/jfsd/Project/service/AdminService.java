package com.klef.jfsd.Project.service;

import java.util.List;






import com.klef.jfsd.Project.model.Admin;
import com.klef.jfsd.Project.model.Doctor;
import com.klef.jfsd.Project.model.Patient;

public interface AdminService 

{
	public List<Patient> viewAllpatients();
	public List<Doctor> viewAlldoctors();
	public Admin checkAdminLogin(String uname, String pwd);
	public long patientcount();
	public long doctorcount();

}
