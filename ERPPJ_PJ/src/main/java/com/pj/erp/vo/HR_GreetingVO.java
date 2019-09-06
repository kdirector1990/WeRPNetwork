package com.pj.erp.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class HR_GreetingVO {

	String pa_code;
	String username;
	String e_name;
	Timestamp pa_date;
	String pa_type;
	String pa_name;
	String department_code;
	String detail_ac_code;
	String pa_details;
	int pa_value;
	String pa_other;
	int jr_state;
	
	
	public String getPa_code() {
		return pa_code;
	}

	public void setPa_code(String pa_code) {
		this.pa_code = pa_code;
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

	public Timestamp getPa_date() {
		return pa_date;
	}

	public void setPa_date(Timestamp pa_date) {
		this.pa_date = pa_date;
	}

	public String getPa_type() {
		return pa_type;
	}

	public void setPa_type(String pa_type) {
		this.pa_type = pa_type;
	}

	public String getPa_name() {
		return pa_name;
	}

	public void setPa_name(String pa_name) {
		this.pa_name = pa_name;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public String getPa_details() {
		return pa_details;
	}

	public void setPa_details(String pa_details) {
		this.pa_details = pa_details;
	}

	public int getPa_value() {
		return pa_value;
	}

	public void setPa_value(int pa_value) {
		this.pa_value = pa_value;
	}

	public String getPa_other() {
		return pa_other;
	}

	public void setPa_other(String pa_other) {
		this.pa_other = pa_other;
	}

	public int getJr_state() {
		return jr_state;
	}

	public void setJr_state(int jr_state) {
		this.jr_state = jr_state;
	}

	
	public HR_GreetingVO() {
	}
}