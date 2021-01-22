package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Skill;


	
	public interface SkillRepo extends CrudRepository<Skill, String>{

}
