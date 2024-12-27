//package com.klef.jfsd.Project.service;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.klef.jfsd.Project.model.Appointment;
//import com.klef.jfsd.Project.repository.AppointmentRepository;
//
//@Service
//public class AppointmentService {
//
//    @Autowired
//    private AppointmentRepository appointmentRepository;
//
//    public void saveAppointment(Appointment appointment) {
//        appointmentRepository.save(appointment);
//    }
//}
//
//
//


package com.klef.jfsd.Project.service;

import com.klef.jfsd.Project.model.Appointment;
import com.klef.jfsd.Project.repository.AppointmentRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AppointmentService {

    private final AppointmentRepository appointmentRepository;

    public AppointmentService(AppointmentRepository appointmentRepository) {
        this.appointmentRepository = appointmentRepository;
    }

    public List<Appointment> getAllAppointments() {
        return appointmentRepository.findAll();
    }
    
    public Appointment saveAppointment(Appointment appointment) {
        return appointmentRepository.save(appointment);
    }
}

