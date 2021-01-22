package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.Employee;
import com.project.demo.repository.EmployeeRepo;

@Transactional
@Service
public class EmployeeService {
	@Autowired
	EmployeeRepo emp_repo;
	
	public Employee getadminbyanswer(String question, String answer) {
		Employee employee = emp_repo.findByAnswer(answer);
		
		if(employee.getSecurityQuestion().equalsIgnoreCase(question))
		{
			return employee;
		}
		
		
		return null;
	}
}
