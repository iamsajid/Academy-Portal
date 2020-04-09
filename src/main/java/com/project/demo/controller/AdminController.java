package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.repository.AdminRepo;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepo admin_repo;
	//redirect to admin registration page for new registration
	@RequestMapping("/admin_registration_page")
	public String admin_reg_page() {
		
		return "admin_registration";
	}
	
	@RequestMapping("/admin_login_page")
	public String admin_login_page() {
		
		return "admin_login";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/admin_login")
	public ModelAndView admin_login(@RequestParam String user_name , @RequestParam String password) {
		
	
		ModelAndView mv = new ModelAndView();
		Admin admin = admin_repo.findById(Integer.parseInt(user_name)).orElse(null);
		//admin_repo.save(admin);
		
		System.out.println(password +" passfromdb="+admin.getPassword());
		if(admin.getAdminId()==Integer.parseInt(user_name) && admin.getPassword().equals(password))
		{mv.addObject(admin);
			mv.setViewName("admin_ui");
		}
		else {
			mv.setViewName("login_failed");
		}	
		
		return mv;
		
		
	}
	
	//Succesfull regitration of new admin
	@RequestMapping(value = "/admin_registration")
	public ModelAndView admin_registration(Admin  admin) {
		
		ModelAndView mv = new ModelAndView("register_success");
		admin_repo.save(admin);
		mv.addObject(admin);
		
		return mv;
	}
	
	
	@RequestMapping("/batch_reg_page")
	public String batch_reg_page() {
		
		return "batch_reg_form";
	}
	
	
}
