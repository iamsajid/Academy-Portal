package com.project.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.project")
public class AcademyPortalApplication {

	public static void main(String[] args) {
		SpringApplication.run(AcademyPortalApplication.class, args);
	}

}
