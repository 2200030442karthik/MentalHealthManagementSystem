package com.klef.jfsd.Project.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.Project.model.Admin;
import com.klef.jfsd.Project.model.Doctor;
import com.klef.jfsd.Project.model.Patient;
import com.klef.jfsd.Project.service.AdminService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@RequestMapping("/adminappointment")
    public String showAppointments(Model model) {
        // Add any required model attributes here, if needed
        return "adminappointment"; // This refers to the JSP file or Thymeleaf template
    }
	
	
//	@GetMapping("adminhome")
//	public ModelAndView adminhome()
//	{
//		ModelAndView mv= new ModelAndView("adminhome");
//
//
//		long count = adminService.patientcount();
//		mv.addObject("count", count);
//		
//		
//		long count1 = adminService.doctorcount();
//		mv.addObject("count1", count1);
//		
//		
//		
//		return mv;
//	}
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
	    ModelAndView mv = new ModelAndView("adminhome");
	    
	    // Get patient count
	    long patientCount = adminService.patientcount();
	    mv.addObject("count", patientCount);  // Add patient count

	    // Get doctor count
	    long doctorCount = adminService.doctorcount();
	    mv.addObject("count1", doctorCount);  // Add doctor count with a different attribute name
	    
	    return mv;
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView  checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");  // Login success
			
			long count = adminService.patientcount();
			mv.addObject("count", count);
			
			
			
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
			
		}
		return mv;
	}

	@GetMapping("viewallpatients")
	public ModelAndView viewallpatients()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallpatients");
		
		long count = adminService.patientcount();
		mv.addObject("count", count);
		
		
		List<Patient> patients = adminService.viewAllpatients();
		mv.addObject("patientlist", patients);
		return mv;
	}
	
	
	
	
	@GetMapping("viewalldoctors")
	public ModelAndView viewalldoctors()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewalldoctors");
		
		long count1 = adminService.doctorcount();
		mv.addObject("count", count1);
		
		
		List<Doctor> doctors = adminService.viewAlldoctors();
		mv.addObject("doctorlist", doctors);
		return mv;
	}
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}