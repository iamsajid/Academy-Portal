package com.project.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Batch;
import com.project.demo.model.Employee;
import com.project.demo.model.Faculty;
import com.project.demo.model.Issue;
import com.project.demo.repository.BatchRepo;
import com.project.demo.repository.FacultyRepo;
import com.project.demo.repository.IssueRepo;
import com.project.demo.service.FacultyService;
import com.project.demo.service.Issueservice;

@Controller
public class FacultyController {

	@Autowired
	FacultyRepo fac_repo;
	@Autowired
	BatchRepo bRepo;
	@Autowired
	IssueRepo issueRepo;
	@Autowired
	Issueservice issueservice;
	@Autowired
	FacultyService faculty_service;
	
	Faculty fac;
	
	@RequestMapping("/faculty_registration_page")
	public String faculty_reg_page() {

		return "faculty_registration";
	}


	@RequestMapping("/faculty_login_page")
	public String faculty_login_page() {

		return "faculty_login";
	}

	
	@RequestMapping("/faculty_login")
	public ModelAndView faculty_login(@RequestParam String user_name, @RequestParam String password) {

		ModelAndView modelandview = new ModelAndView();
		Faculty faculty = fac_repo.findById(Integer.parseInt(user_name)).orElse(null);
		// emp_repo.save(employee);
		if (faculty.getFacultyId() == Integer.parseInt(user_name) && faculty.getPassword().equals(password)) {
			modelandview.addObject(faculty);
			fac=faculty;
			modelandview.setViewName("faculty_ui");
		} else {
			modelandview.setViewName("login_failed");
		}

		return modelandview;
	}


	@RequestMapping(value = "/faculty_registration")
	public ModelAndView faculty_registration(Faculty faculty) {

		ModelAndView modelandview = new ModelAndView("register_success");
		fac_repo.save(faculty);
		modelandview.addObject(faculty);

		return modelandview;
	}
	
	@RequestMapping(value = "/batch_mapping")
	public ModelAndView batch_data_fetch() {
		//int id = fac.getFacultyId();
		//Batch b = bRepo.findById(001);Integer.parseInt(user_name)).orElse(null);
		Batch batch = bRepo.findByFacultyId(fac.getFacultyId());
		//System.out.println(batch);
		//System.out.println(id);
		ModelAndView mv = new ModelAndView("show_batch");
		mv.addObject(batch);
		
		return mv;
	}
//	@RequestMapping(value ="/resolve")
//	public ModelAndView IssueResolve(ModelMap modelMap) {
//		//ModelMap modelMap = null;
//		//modelMap.put("issue",issueRepo.findAll());
//		Issue is = issueRepo.findByIssueId(03);
//		ModelAndView mv = new ModelAndView("resolve",modelMap);
//		ArrayList<Issue> issuelist = (ArrayList<Issue>) issueRepo.findAll();
//		//modelMap.put("issue",issueRepo.findAll());
//		System.out.println(issuelist);
//		mv.addObject(issuelist);
//		mv.addObject(is);
//		return mv;
//	}
//	@RequestMapping("/resolve")
//	public String IssueResolve(ModelMap modelmap) {
//		modelmap.put("issue", issueservice.getAll());
//		return "resolve";
//	}
	@RequestMapping("/forgot_user_id_page_faculty")
	public String forgot_userId() {

		return "forgot_user_id_faculty";
	}
	
	@RequestMapping("/forgot_user_id_faculty")
	public ModelAndView forgot_userid_admin(@RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		Faculty faculty = faculty_service.getadminbyanswer(securityQuestion, answer);
		if(faculty!=null) {
			modelandview.addObject(faculty);
			modelandview.setViewName("forgot_user_id_faculty");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	@RequestMapping("/forgot_password_page_faculty")
	public String forgot_password() {

		return "forgot_password_faculty";
	}
	
	@RequestMapping("/forgot_password_faculty")
	public ModelAndView forgot_password_faculty(@RequestParam String userId, @RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userId));
		Faculty faculty = faculty_service.getadminbyanswer(securityQuestion, answer);
		if(faculty!=null && faculty.getFacultyId()==Integer.parseInt(userId)) {
			modelandview.addObject(faculty);
			fac=faculty;
			modelandview.setViewName("reset_password_faculty");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	
	@RequestMapping("/reset_password_faculty")
	public ModelAndView reset_password_faculty(@RequestParam String newpassword, @RequestParam String confirmpassword) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userId));
		//Admin adm =ad;
		//Faculty fa =fac;
		if(newpassword.equals(confirmpassword))
		{
			fac.setPassword(newpassword);
			//fac_repo.deleteById(fac.getFacultyId());
			fac_repo.save(fac);
			modelandview.setViewName("password_reset_success");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		
		return modelandview;
	}
	

	@RequestMapping(value ="/resolve")
	public String issueReSsolve(ModelMap modelMap)
	{
		//model.addAttribute("issueId", issueId);
		modelMap.put("issue", issueRepo.findAll());
		return "resolve";
	}
}
