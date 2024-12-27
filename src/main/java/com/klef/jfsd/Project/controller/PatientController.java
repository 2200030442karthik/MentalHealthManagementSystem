package com.klef.jfsd.Project.controller;


import com.klef.jfsd.Project.model.Appointment;


import com.klef.jfsd.Project.model.Patient;
import com.klef.jfsd.Project.service.AppointmentService;
import com.klef.jfsd.Project.service.PatientService;

import ch.qos.logback.core.model.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class PatientController {

    private static final String REDIRECT_LOGIN = "redirect:/patientlogin";

    @Autowired
    private PatientService patientService;


    

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("patientreg")
    public ModelAndView patientreg() {
        return new ModelAndView("patientreg");
    }

    @GetMapping("patientlogin")
    public ModelAndView patientlogin() {
        return new ModelAndView("patientlogin");
    }

    @GetMapping("patienthome")
    public ModelAndView patienthome(HttpSession session) {
        if (session.getAttribute("patient") == null) {
            return new ModelAndView(REDIRECT_LOGIN);
        }
        return new ModelAndView("patienthome");
    }

    @GetMapping("patientprofile")
    public ModelAndView patientprofile(HttpSession session) {
        Patient patient = (Patient) session.getAttribute("patient");
        if (patient == null) {
            return new ModelAndView(REDIRECT_LOGIN);
        }

        ModelAndView mv = new ModelAndView("patientprofile");
        mv.addObject("patient", patient);
        return mv;
    }

    @GetMapping("patientlogout")
    public ModelAndView patientlogout(HttpSession session) {
        session.invalidate();
        return new ModelAndView(REDIRECT_LOGIN);
    }
    
    
    @GetMapping("/bookappointment")
    public String showAppointmentPage(Model model) {
        // Add any attributes to the model if needed
        return "bookappointment"; // Matches the name of your HTML or JSP file
    }
    
    
    
    
    
    
    
    
    
    

    @PostMapping("insertpatient")
    public ModelAndView insertpatient(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("cgender");
        String dob = request.getParameter("cdob");
        String email = request.getParameter("cemail");
        String location = request.getParameter("clocation");
        String contact = request.getParameter("ccontact");
        String password = request.getParameter("cpwd");

        Patient patient = new Patient();
        patient.setName(name);
        patient.setGender(gender);
        patient.setDateofbirth(dob);
        patient.setEmail(email);
        patient.setLocation(location);
        patient.setContact(contact);
        patient.setPassword(password);

        String message = patientService.patientRegistration(patient);

        ModelAndView mv = new ModelAndView("regsuccess");
        mv.addObject("message", message);

        return mv;
    }

    @PostMapping("checkPatientLogin")
    public ModelAndView checkPatientLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");

        Patient patient = patientService.checkPatientLogin(cemail, cpwd);

        if (patient != null) {
            HttpSession session = request.getSession();
            session.setAttribute("patient", patient); // Store patient in session
            mv.setViewName("patienthome"); // Login success
        } else {
            mv.setViewName("patientlogin"); // Redirect to login with error
            mv.addObject("message", "Login Failed. Please try again.");
        }
        return mv;
    }
    
    @Autowired
    private AppointmentService appointmentService;
    
    @PostMapping("/submitAppointment")
    public String submitAppointment(@RequestParam("name") String name,
                                    @RequestParam("age") int age,
                                    @RequestParam("disease") String disease,
                                    @RequestParam("date") String date,
                                    @RequestParam("contact") String contact) {
        Appointment appointment = new Appointment(name, age, disease, date, contact);
        appointmentService.saveAppointment(appointment);
        return "success"; // Redirect to a success page
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
