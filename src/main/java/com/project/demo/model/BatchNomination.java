package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;



@Entity
public class BatchNomination {

	@Id
	private int batchNominationId;

	private int employeeId;
	private String batchId;
	private String status;

	public int getBatchNominationId() {
		return batchNominationId;
	}

	public void setBatchNominationId(int batchNominationId) {
		this.batchNominationId = batchNominationId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BatchNomination [batchNominationId=" + batchNominationId + ", employeeId=" + employeeId + ", batchId="
				+ batchId + ", status=" + status + "]";
	}
	
}
