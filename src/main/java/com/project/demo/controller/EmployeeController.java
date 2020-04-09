package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Employee;
import com.project.demo.repository.EmployeeRepo;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeRepo emp_repo;
	
	//redirect to employee registration page for new registration
	@RequestMapping("/employee_registration_page")
	public String employee_reg_page() {
		
		return "employee_registration";
	}
	@RequestMapping("/employee_login_page")
	public String employee_login_page() {
		
		return "employee_login";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/employee_login")
	public ModelAndView emp_login(@RequestParam String user_name , @RequestParam String password) {
		
		ModelAndView mv = new ModelAndView();
		Employee employee = emp_repo.findById(Integer.parseInt(user_name)).orElse(null);
		//emp_repo.save(employee);
		if(employee.getEmployeeId()==Integer.parseInt(user_name) && employee.getPassword().equals(password))
		{mv.addObject(employee);
			mv.setViewName("employee_ui");
		}
		else {
			mv.setViewName("login_failed");
		}	
		
		return mv;
		
		
	}
	
	//Succesfull regitration of new employee
	@RequestMapping(value = "/employee_registration")
	public ModelAndView emp_registration(Employee  employee) {
		
		ModelAndView mv = new ModelAndView("register_success");
		emp_repo.save(employee);
		mv.addObject(employee);
		
		return mv;
	}
}
