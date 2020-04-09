package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Batch {
	@Id
	private String batchId;
	private String skillId;
	private String moduleId;
	private String technology;
	private int facultyId;
	private String batchStartDate;
	private String batchEndDate;
	private int batchCapacity;
	private String classRoom;
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public String getSkillId() {
		return skillId;
	}
	public void setSkillId(String skillId) {
		this.skillId = skillId;
	}
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public int getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}
	public String getBatchStartDate() {
		return batchStartDate;
	}
	public void setBatchStartDate(String batchStartDate) {
		this.batchStartDate = batchStartDate;
	}
	public String getBatchEndDate() {
		return batchEndDate;
	}
	public void setBatchEndDate(String batchEndDate) {
		this.batchEndDate = batchEndDate;
	}
	public int getBatchCapacity() {
		return batchCapacity;
	}
	public void setBatchCapacity(int batchCapacity) {
		this.batchCapacity = batchCapacity;
	}
	public String getClassRoom() {
		return classRoom;
	}
	public void setClassRoom(String classRoom) {
		this.classRoom = classRoom;
	}
	
	@Override
	public String toString() {
		return "Batch [batchId=" + batchId + ", skillId=" + skillId + ", moduleId=" + moduleId + ", technology="
				+ technology + ", facultyId=" + facultyId + ", batchStartDate=" + batchStartDate + ", batchEndDate="
				+ batchEndDate + ", batchCapacity=" + batchCapacity + ", classRoom=" + classRoom + "]";
	}
	
	
}
