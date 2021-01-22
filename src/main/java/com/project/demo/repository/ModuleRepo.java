package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;


import com.project.demo.model.Module;

public interface ModuleRepo extends CrudRepository<Module, String> {

}
