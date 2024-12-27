package com.klef.jfsd.Project.repository;

import org.springframework.data.jpa.repository.JpaRepository;





import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.Project.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient ,Integer> 
{
	@Query("select c from Patient c where c.email=?1 and c.password=?2 ")
	public Patient checkPatientLogin(String email, String password);
}
