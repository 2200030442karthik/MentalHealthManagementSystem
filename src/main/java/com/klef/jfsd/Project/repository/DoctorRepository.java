package com.klef.jfsd.Project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.Project.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor ,Integer> 
{
	@Query("select c from Doctor c where c.email=?1 and c.password=?2 ")
	public Doctor checkDoctorLogin(String email, String password);
}



