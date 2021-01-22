package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Faculty;

public interface FacultyRepo extends CrudRepository<Faculty, Integer> {
	Faculty findByAnswer(String answer);
}
