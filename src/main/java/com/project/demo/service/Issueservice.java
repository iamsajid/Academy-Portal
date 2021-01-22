package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.Issue;
import com.project.demo.repository.IssueRepo;

@Transactional
@Service
public class Issueservice {

	@Autowired
	private IssueRepo issueRepo;

	public   Iterable<Issue> getAll() {
			return issueRepo.findAll();
		}
}