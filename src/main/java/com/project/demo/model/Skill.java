package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Skill {
	
	@Id
	private String skillId;
	private String skillFamily;
	private String skillName;
	public String getSkillId() {
		return skillId;
	}
	public void setSkillId(String skillId) {
		this.skillId = skillId;
	}
	public String getSkillFamily() {
		return skillFamily;
	}
	public void setSkillFamily(String skillFamily) {
		this.skillFamily = skillFamily;
	}
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	@Override
	public String toString() {
		return "Skill [skillId=" + skillId + ", skillFamily=" + skillFamily + ", skillName=" + skillName + "]";
	}
	
	
	
}
