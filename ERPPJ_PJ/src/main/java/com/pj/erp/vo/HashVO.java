package com.pj.erp.vo;

import java.sql.Timestamp;

public class HashVO {

	Timestamp ether_rec_code;
	String department_code;
	String e_subject;
	String e_hashcode;
	String department_name;
	
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

	public String getE_subject() {
		return e_subject;
	}

	public void setE_subject(String e_subject) {
		this.e_subject = e_subject;
	}

	public String getE_hashcode() {
		return e_hashcode;
	}

	public void setE_hashcode(String e_hashcode) {
		this.e_hashcode = e_hashcode;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	
	
	
	
}
