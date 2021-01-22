package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Batch;
import com.project.demo.model.Employee;
import com.project.demo.model.Faculty;
import com.project.demo.model.Skill;
import com.project.demo.repository.BatchRepo;
import com.project.demo.repository.EmployeeRepo;
import com.project.demo.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeRepo emp_repo;
	@Autowired
	BatchRepo bRepo;
	@Autowired
	EmployeeService emp_service;
	
	Employee emp;
	
	

	@RequestMapping("/employee_registration_page")
	public String employee_reg_page() {
		
		return "employee_registration";
	}
	@RequestMapping("/employee_login_page")
	public String employee_login_page() {
		
		return "employee_login";
	}
	

	@RequestMapping("/employee_login")
	public ModelAndView emp_login(@RequestParam String user_name , @RequestParam String password) {
		
		ModelAndView modelandview = new ModelAndView();
		Employee employee = emp_repo.findById(Integer.parseInt(user_name)).orElse(null);
		//emp_repo.save(employee);
		if(employee.getEmployeeId()==Integer.parseInt(user_name) && employee.getPassword().equals(password))
		{modelandview.addObject(employee);
			modelandview.setViewName("employee_ui");
		}
		else {
			modelandview.setViewName("login_failed");
		}	
		
		return modelandview;
		
		
	}
	
	@RequestMapping(value = "/search1")
	public ModelAndView search1( @RequestParam String search ,@RequestParam String searchvalue) {
		
		ModelAndView modelandview = new ModelAndView("search1");
		Batch batch =null;
		
		if(search.equals("SkillId")) {
			batch = bRepo.findBySkillId(searchvalue);
		}else if (search.equals("ModuleId")) {
			batch = bRepo.findByModuleId(searchvalue);
		}else if (search.equals("BatchId")) {
			batch = bRepo.findByBatchId(searchvalue);
		}else if (search.equals("FacultyId")) {
			batch = bRepo.findByFacultyId(Integer.parseInt(searchvalue));
		}
		
		System.out.println(batch);
		System.out.println(searchvalue);
		modelandview.addObject(batch);
		return modelandview;
	}
	@RequestMapping(value = "/search2")
	public ModelAndView search2( @RequestParam String search ,@RequestParam String searchvalue) {
		
		ModelAndView modelandview = new ModelAndView("search2");
		Batch batch =null;
		System.out.println(searchvalue);
		if(search.equals("BatchStartDate")) {
			batch = bRepo.findByBatchStartDate(searchvalue);
		}else if (search.equals("BatchEndDate")) {
			batch = bRepo.findByBatchEndDate(searchvalue);
		}
//		System.out.println(batch);
//		System.out.println(searchvalue);
		modelandview.addObject(batch);
		return modelandview;
	}
	
//	<option value="BatchStartDate">BatchStartDate"</option>
//			<option value="BatchEndDate">BatchEndDate</option>
////	<option value="SkillId">SkillId</option>
//	<option value="ModuleId">ModuleId</option>
//	<option value="BatchId">BatchId</option>
//	<option value="FacultyId">FacultyId</option>

	@RequestMapping(value = "/employee_registration")
	public ModelAndView emp_registration(Employee  employee) {
		
		ModelAndView modelandview = new ModelAndView("register_success");
		emp_repo.save(employee);
		modelandview.addObject(employee);
		
		return modelandview;
	}
	
	@RequestMapping("/search")
	public String search() {
		
		return "search";
	}
	
	@RequestMapping("/basic_search")
	public String basic_search() {
		
		return "search1";
	}
	@RequestMapping("/advance_search")
	public String advance_search() {
		
		return "search2";
	}
	@RequestMapping("/elearning")
	public String elearning() {
		
		return "elearning";
	}
	
	@RequestMapping("/forgot_user_id_page_employee")
	public String forgot_userId() {

		return "forgot_user_id_employee";
	}
	
	@RequestMapping("/forgot_user_id_employee")
	public ModelAndView forgot_userid_admin(@RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		Employee employee = emp_service.getadminbyanswer(securityQuestion, answer);
		if(employee!=null) {
			modelandview.addObject(employee);
			modelandview.setViewName("forgot_user_id_employee");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	@RequestMapping("/forgot_password_page_employee")
	public String forgot_password() {

		return "forgot_password_employee";
	}
	
	@RequestMapping("/forgot_password_employee")
	public ModelAndView forgot_password_faculty(@RequestParam String userId, @RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userId));
		Employee employee = emp_service.getadminbyanswer(securityQuestion, answer);
		if(employee!=null && employee.getEmployeeId()==Integer.parseInt(userId)) {
			modelandview.addObject(employee);
			emp=employee;
			modelandview.setViewName("reset_password_employee");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	
	@RequestMapping("/reset_password_employee")
	public ModelAndView reset_password_faculty(@RequestParam String newpassword, @RequestParam String confirmpassword) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userId));
		
		//Faculty fa =fac;
		if(newpassword.equals(confirmpassword))
		{
			emp.setPassword(newpassword);
			//emp_repo.deleteById(emp.getEmployeeId());
			emp_repo.save(emp);
			modelandview.setViewName("password_reset_success");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		
		return modelandview;
	}
	
	@RequestMapping(value ="/batch_search")
	public String issueReSsolve(ModelMap modelMap)
	{
		//model.addAttribute("issueId", issueId);
		modelMap.put("batches", bRepo.findAll());
		return "batch_nomination";
	}
	
	
}
