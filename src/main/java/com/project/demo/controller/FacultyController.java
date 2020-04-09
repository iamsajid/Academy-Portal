package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Employee;
import com.project.demo.model.Faculty;
import com.project.demo.repository.FacultyRepo;

@Controller
public class FacultyController {
	
	@Autowired
	FacultyRepo fac_repo;
	
	//redirect to faculty registration page for new registration
	@RequestMapping("/faculty_registration_page")
	public String faculty_reg_page() {
		
		return "faculty_registration";
	}
	
	//redirect to faculty login page
	@RequestMapping("/faculty_login_page")
	public String faculty_login_page() {
		
		return "faculty_login";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/faculty_login")
	public ModelAndView faculty_login(@RequestParam String user_name , @RequestParam String password) {
		
		ModelAndView mv = new ModelAndView();
		Faculty faculty = fac_repo.findById(Integer.parseInt(user_name)).orElse(null);
		//emp_repo.save(employee);
		if(faculty.getFacultyId()==Integer.parseInt(user_name) && faculty.getPassword().equals(password))
		{mv.addObject(faculty);
			mv.setViewName("faculty_ui");
		}
		else {
			mv.setViewName("login_failed");
		}	
		
		return mv;
	}
	
	//Succesfull regitration of new faculty
	@RequestMapping(value = "/faculty_registration")
	public ModelAndView faculty_registration(Faculty  faculty) {
		
		ModelAndView mv = new ModelAndView("register_success");
		fac_repo.save(faculty);
		mv.addObject(faculty);
		
		return mv;
	}
}
