package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Module {
	
	@Id
	private String moduleId;
	
	private String technologyName;
	private String proficiencyLevel;
	private String executionType;
	private String certificationType;
	private String certificationName;
	
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
	this.moduleId = moduleId;
	}
	public String getTechnologyName() {
		return technologyName;
	}
	public void setTechnologyName(String technologyName) {
		this.technologyName = technologyName;
	}
	public String getProficiencyLevel() {
		return proficiencyLevel;
	}
	public void setProficiencyLevel(String proficiencyLevel) {
		this.proficiencyLevel = proficiencyLevel;
	}
	public String getExecutionType() {
		return executionType;
	}
	public void setExecutionType(String executionType) {
		this.executionType = executionType;
	}
	public String getCertificationType() {
		return certificationType;
	}
	public void setCertificationType(String certificationType) {
		this.certificationType = certificationType;
	}
	public String getCertificationName() {
		return certificationName;
	}
	public void setCertificationName(String certificationName) {
		this.certificationName = certificationName;
	}
	@Override
	public String toString() {
		return "Module [ModuleId=" + moduleId + ", technologyName=" + technologyName + ", proficiencyLevel="
				+ proficiencyLevel + ", executionType=" + executionType + ", certificationType=" + certificationType
				+ ", certificationName=" + certificationName + "]";
	}
	
	
	
	

}
