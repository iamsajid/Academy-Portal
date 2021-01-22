package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.Admin;

import com.project.demo.repository.AdminRepo;


@Transactional
@Service
public class AdminService {
	@Autowired
	AdminRepo admin_repo;
	
	public Admin getadminbyanswer(String question, String answer) {
		Admin admin = admin_repo.findByAnswer(answer);
		
		if(admin.getSecurityQuestion().equalsIgnoreCase(question))
		{
			return admin;
		}
		
		
		return null;
	}
}

