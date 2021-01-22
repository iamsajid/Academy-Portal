package com.project.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.project.demo.model.Skill;
import com.project.demo.model.Module;
import com.project.demo.repository.*;
import com.project.demo.service.AdminService;
import com.project.demo.model.Admin;

@Controller
public class AdminController {

	@Autowired
	AdminRepo admin_repo;
	@Autowired
	SkillRepo skill_repo;
	@Autowired
	ModuleRepo module_repo;
	@Autowired
	AdminService admin_service;
	
	Admin ad;
	

	@RequestMapping("/admin_registration_page")
	public String adminReg() {

		return "admin_registration";
	}

	@RequestMapping("/admin_login_page")
	public String adminPage() {

		return "admin_login";
	}

	@RequestMapping("/admin_login")
	public ModelAndView admin_login(@RequestParam String user_name, @RequestParam String password) {

		ModelAndView modelandview = new ModelAndView();
		Admin admin = admin_repo.findById(Integer.parseInt(user_name)).orElse(null);
		// admin_repo.save(admin);

		System.out.println(password + " passfromdb=" + admin.getPassword());
		if (admin.getAdminId() == Integer.parseInt(user_name) && admin.getPassword().equals(password)) {
			modelandview.addObject(admin);
			modelandview.setViewName("admin_ui");
		} else {
			modelandview.setViewName("login_failed");
		}

		return modelandview;

	}

	@RequestMapping(value = "/admin_registration")
	public ModelAndView adminRegistration(Admin admin) {

		ModelAndView modelandview = new ModelAndView("register_success");
		admin_repo.save(admin);
		System.out.println(admin);
		modelandview.addObject(admin);

		return modelandview;
	}

	@RequestMapping("/batch_reg_page")
	public String batchPage() {

		return "batch_reg_form";

	}

	@RequestMapping("/skill_reg_page")
	public String skill_page() {

		return "skill_reg_form";
	}
	@RequestMapping(value = "/skill_registration")
	public ModelAndView skill_registration(Skill skill) {

		ModelAndView modelandview = new ModelAndView("register_success");
		skill_repo.save(skill);
		modelandview.addObject(skill);

		return modelandview;
	}
	@RequestMapping("/module_reg")
	public String module_page() {

		return "module_reg";
	}
	@RequestMapping(value = "/module_registration")
	public ModelAndView module_registration(Module module) {

		ModelAndView modelandview = new ModelAndView("register_success");
		module_repo.save(module);
		System.out.println(module);
		modelandview.addObject(module);

		return modelandview;
	}
//	@RequestMapping("/skillmodule_map")
//	public String skilmodule_page() {
//
//		return "skilmodule_mapping";
//	}
	@RequestMapping(value = "/skilmodule_listing")
	public String skilmodule_listing(ModelMap modelmap) {
		modelmap.put("skill", skill_repo.findAll());
		return "skilmodule_listing";
	}
	
	@RequestMapping("/forgot_user_id_page_admin")
	public String forgot_userId() {

		return "forgot_user_id";
	}
	
	@RequestMapping("/forgot_user_id")
	public ModelAndView forgot_userid_admin(@RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		Admin admin = admin_service.getadminbyanswer(securityQuestion, answer);
		if(admin!=null) {
			modelandview.addObject(admin);
			modelandview.setViewName("forgot_user_id");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	
	@RequestMapping("/forgot_password_page_admin")
	public String forgot_password() {

		return "forgot_password";
	}
	
	@RequestMapping("/forgot_password_admin")
	public ModelAndView forgot_password_admin(@RequestParam String userId, @RequestParam String securityQuestion, @RequestParam String answer) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userId));
		Admin admin = admin_service.getadminbyanswer(securityQuestion, answer);
		if(admin!=null && admin.getAdminId()==Integer.parseInt(userId)) {
			modelandview.addObject(admin);
			ad=admin;
			modelandview.setViewName("reset_password");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		return modelandview;
	}
	
	@RequestMapping("/reset_password_admin")
	public ModelAndView reset_password_admin(@RequestParam String newpassword, @RequestParam String confirmpassword) {
		ModelAndView modelandview = new ModelAndView();
		//Admin admin = admin_repo.findByAdminId(Integer.parseInt(userI
		if(newpassword.equals(confirmpassword))
		{
			ad.setPassword(newpassword);
			//admin_repo.deleteById(ad.getAdminId());
			admin_repo.save(ad);
			modelandview.setViewName("password_reset_success");
		}
		else {
			modelandview.setViewName("login_failed");
		}
		
		return modelandview;
	}
	

	


}
