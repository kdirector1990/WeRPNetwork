package com.pj.erp.vo.HR;

import java.sql.Date;

public class HR_YearService_VO {
	
	String username;
	String e_name;
	String department_name;
	String position_name;
	Date start_date;
	int service_year;
	int service_month;
	String e_code;
	
	public HR_YearService_VO() {
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

	public String getPosition_name() {
		return position_name;
	}

	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public int getService_year() {
		return service_year;
	}

	public void setService_year(int service_year) {
		this.service_year = service_year;
	}

	public int getService_month() {
		return service_month;
	}

	public void setService_month(int service_month) {
		this.service_month = service_month;
	}

	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}
	

	
	

}
