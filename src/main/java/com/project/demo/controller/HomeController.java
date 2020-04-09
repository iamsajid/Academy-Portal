package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Batch;
import com.project.demo.repository.BatchRepo;

@Controller
public class HomeController {
	
	@Autowired
	BatchRepo bRepo;
	
	@RequestMapping("/")
	public String home_page() {
		
		return "home";
	}
	
	@RequestMapping("/home")
	public String home_page1() {
		
		return "home";
	}
	
	@RequestMapping("/login_success")
	public String login_success() {
		
		return "login_success";
	}
	
	@RequestMapping("/register_success")
	public String register_success() {
		
		return "register_success";
	}
	
	
	@RequestMapping(value = "/batch_registration")
	public ModelAndView batch_registration(Batch batch) {
		
		ModelAndView mv = new ModelAndView("register_success");
		bRepo.save(batch);
		mv.addObject(batch);
		
		return mv;
	}

}
