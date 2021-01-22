package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;


import com.project.demo.model.Issue;

public interface IssueRepo extends CrudRepository<Issue, Integer> {
	public Issue findByIssueId(Integer issueId);
	
	public default Iterable<Issue> getAll() {
		return findAll();
	}
}