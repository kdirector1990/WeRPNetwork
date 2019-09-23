package com.pj.erp.vo.HR;

import java.sql.Timestamp;

public class HR_SalaryVO {
	
	String username;
	String e_name;
	String department_name;
	String rank_name;
	Timestamp start_date;
	int base_payment;
	int add_payment;
	int extension_payment;
	
	public HR_SalaryVO() {
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getRank_name() {
		return rank_name;
	}

	public void setRank_name(String rank_name) {
		this.rank_name = rank_name;
	}

	public Timestamp getStart_date() {
		return start_date;
	}

	public void setStart_date(Timestamp start_date) {
		this.start_date = start_date;
	}

	public int getBase_payment() {
		return base_payment;
	}

	public void setBase_payment(int base_payment) {
		this.base_payment = base_payment;
	}

	public int getAdd_payment() {
		return add_payment;
	}

	public void setAdd_payment(int add_payment) {
		this.add_payment = add_payment;
	}

	public int getExtension_payment() {
		return extension_payment;
	}

	public void setExtension_payment(int extension_payment) {
		this.extension_payment = extension_payment;
	}
	
	
	

}
