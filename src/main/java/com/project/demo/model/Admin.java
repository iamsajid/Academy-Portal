package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import com.sun.istack.NotNull;

@Entity
@SequenceGenerator(name="seq",initialValue=111111)
public class Admin {
	private String firstName;
	private String lastName;
	private String dob;
	private String gender;
	private String contactNo;
	private String email;
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq")
	@NotNull
	private int adminId;
	private String password;
	private String securityQuestion;
	private String answer;
	

	

	public String getSecurityQuestion() {
		return securityQuestion;
	}




	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}




	public String getAnswer() {
		return answer;
	}




	public void setAnswer(String answer) {
		this.answer = answer;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public String getDob() {
		return dob;
	}




	public void setDob(String dob) {
		this.dob = dob;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getContactNo() {
		return contactNo;
	}




	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public int getAdminId() {
		return adminId;
	}




	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	@Override
	public String toString() {
		return   firstName + " " + lastName + "\n(" + " Admin-Id:" + adminId + ")";
	}
	
	 
}
