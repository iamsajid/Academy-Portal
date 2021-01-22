package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Employee;

public interface EmployeeRepo extends CrudRepository<Employee, Integer>{
	  Employee findByAnswer(String answer);
}
