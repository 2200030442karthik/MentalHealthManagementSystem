package com.klef.jfsd.Project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.Project.model.Doctor;
import com.klef.jfsd.Project.service.DoctorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    // Mapping for the main home page
    @GetMapping("/home")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    // Mapping to display the doctor registration form
    @GetMapping("/doctorreg")
    public ModelAndView doctorRegistrationForm() {
        return new ModelAndView("doctorreg");
    }

    // Mapping to display the doctor login page
    @GetMapping("/doctorlogin")
    public ModelAndView doctorLoginForm() {
        return new ModelAndView("doctorlogin");
    }

    // Mapping to display the doctor home page after login
    @GetMapping("/doctorhome")
    public ModelAndView doctorHomePage(HttpSession session) {
        ModelAndView mv = new ModelAndView("doctorhome");
        Doctor doctor = (Doctor) session.getAttribute("doctor");
        if (doctor != null) {
            mv.addObject("doctor", doctor); // Ensure doctor data is passed to the view if logged in
        } else {
            mv.setViewName("redirect:/doctorlogin"); // Redirect to login if session expired
        }
        return mv;
    }

    // Mapping to display the doctor profile page
    @GetMapping("/doctorprofile")
    public ModelAndView doctorProfile(HttpSession session) {
        ModelAndView mv = new ModelAndView("doctorprofile");
        Doctor doctor = (Doctor) session.getAttribute("doctor");
        if (doctor != null) {
            mv.addObject("doctor", doctor); // Pass doctor data to view if logged in
        } else {
            mv.setViewName("redirect:/doctorlogin");
        }
        return mv;
    }

    // Logout and redirect to the login page
    @GetMapping("/doctorlogout")
    public ModelAndView doctorLogout(HttpSession session) {
        session.invalidate(); // Invalidate the session to log out
        return new ModelAndView("redirect:/doctorlogin");
    }

    // Mapping for inserting a new doctor during registration
    @PostMapping("/insertdoctor")
    public ModelAndView insertDoctor(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("cgender");
        String dob = request.getParameter("cdob");
        String email = request.getParameter("cemail");
        String location = request.getParameter("clocation");
        String contact = request.getParameter("ccontact");
        String password = request.getParameter("cpwd");

        Doctor doctor = new Doctor();
        doctor.setName(name);
        doctor.setGender(gender);
        doctor.setDateofbirth(dob);
        doctor.setEmail(email);
        doctor.setLocation(location);
        doctor.setContact(contact);
        doctor.setPassword(password);

        String message = doctorService.doctorRegistration(doctor);
        
        ModelAndView mv = new ModelAndView("doctorsucces");
        mv.addObject("message", message);

        return mv;
    }

    // Mapping for handling doctor login check
    @PostMapping("/checkDoctorLogin")
    public ModelAndView checkDoctorLogin(HttpServletRequest request) {
        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");

        Doctor doctor = doctorService.checkDoctorLogin(cemail, cpwd);
        ModelAndView mv = new ModelAndView();

        if (doctor != null) {
            HttpSession session = request.getSession();
            session.setAttribute("doctor", doctor); // Store doctor in session if login successful
            mv.setViewName("redirect:/doctorhome"); // Redirect to doctor home page
        } else {
            mv.setViewName("doctorlogin");
            mv.addObject("message", "Login Failed. Please try again.");
        }

        return mv;
    }
}
