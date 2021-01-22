package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Batch;

public interface BatchRepo extends CrudRepository<Batch, String> {
	 public Batch findByBatchId(String batchId);
	// Batch findById(int id);
	 public Batch findByFacultyId(int facultyId);
	 public Batch deleteByFacultyId(int facultyId);
	 public Batch findBySkillId(String skillId);
	 public Batch findByModuleId(String moduleId);
	 public Batch findByBatchStartDate(String BatchStartDate);
	 public Batch findByBatchEndDate(String BatchEndDate);
}
