package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Admin;

public interface AdminRepo extends CrudRepository<Admin, Integer> {

}
 