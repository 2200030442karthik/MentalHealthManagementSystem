package com.klef.jfsd.Project.repository;

import com.klef.jfsd.Project.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {
    // Custom query methods can be added here if needed
}
