package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.Admin;
import com.project.demo.model.Faculty;
import com.project.demo.repository.AdminRepo;
import com.project.demo.repository.FacultyRepo;

@Transactional
@Service
public class FacultyService {
	@Autowired
	FacultyRepo faculty_repo;
	
	public Faculty getadminbyanswer(String question, String answer) {
		Faculty faculty = faculty_repo.findByAnswer(answer);
		if(faculty.getSecurityQuestion().equalsIgnoreCase(question))
		{
			return faculty;
		}
		
		
		return null;
		
	}
}
