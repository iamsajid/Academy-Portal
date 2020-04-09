package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Batch;

public interface BatchRepo extends CrudRepository<Batch, String> {

}
