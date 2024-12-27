package com.klef.jfsd.Project.controller;

import com.klef.jfsd.Project.model.Appointment;

import com.klef.jfsd.Project.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/view-appointments")
    public String viewAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "viewAppointments";
    }
    @GetMapping("/viewappointment")
    public String viewAppointments1(Model model) {
        // Add data to the model if needed
        return "viewappointment"; // This should match the view file name (without extension)
    }
    
}
