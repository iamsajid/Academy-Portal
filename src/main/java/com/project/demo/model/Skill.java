package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Skill {
	
	@Id
	private int skillId;
	
	private String skillFamily;
	private String proficiencyLevel;
	private String skillName;
	public int getSkillId() {
		return skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public String getSkillFamily() {
		return skillFamily;
	}
	public void setSkillFamily(String skillFamily) {
		this.skillFamily = skillFamily;
	}
	public String getProficiencyLevel() {
		return proficiencyLevel;
	}
	public void setProficiencyLevel(String proficiencyLevel) {
		this.proficiencyLevel = proficiencyLevel;
	}
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	
}
