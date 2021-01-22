package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Issue {

	@Id

	private int issueId;
	private String description;
	private String dateOfTicket;

	public int getIssueId() {
		return issueId;
	}

	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}

	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDateOfTicket() {
		return dateOfTicket;
	}

	public void setDateOfTicket(String dateOfTicket) {
		this.dateOfTicket = dateOfTicket;
	}

	@Override
	public String toString() {
		return "Issue [issueId=" + issueId + ", description=" + description + ", dateOfTicket=" + dateOfTicket + "]";
	}

	
	
}
