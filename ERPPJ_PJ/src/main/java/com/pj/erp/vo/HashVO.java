package com.pj.erp.vo;

import java.sql.Timestamp;

public class HashVO {

	Timestamp ether_rec_code;
	String department_code;
	String subject;
	String hashcode;
	
	public void HashVO() {}

	public Timestamp getEther_rec_code() {
		return ether_rec_code;
	}

	public void setEther_rec_code(Timestamp ether_rec_code) {
		this.ether_rec_code = ether_rec_code;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getHashcode() {
		return hashcode;
	}

	public void setHashcode(String hashcode) {
		this.hashcode = hashcode;
	}
	
	
}
