package com.pj.erp.vo.FT;

import java.sql.Date;

public class FT_facility_list_VO {

	String eq_code;
	String department_code;
	String eq_name;
	String eq_type;
	Date eq_acquire_date;
	String eq_location;
	int eq_prime_cost;
	int durable;
	int eq_depreciation;
	String eq_depreciatino_type;
	String dp_account_code;
	String dp_code;
	
	
	public FT_facility_list_VO() {
	}


	public String getEq_code() {
		return eq_code;
	}


	public void setEq_code(String eq_code) {
		this.eq_code = eq_code;
	}


	public String getDepartment_code() {
		return department_code;
	}


	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}


	public String getEq_name() {
		return eq_name;
	}


	public void setEq_name(String eq_name) {
		this.eq_name = eq_name;
	}


	public String getEq_type() {
		return eq_type;
	}


	public void setEq_type(String eq_type) {
		this.eq_type = eq_type;
	}


	public Date getEq_acquire_date() {
		return eq_acquire_date;
	}


	public void setEq_acquire_date(Date eq_acquire_date) {
		this.eq_acquire_date = eq_acquire_date;
	}


	public String getEq_location() {
		return eq_location;
	}


	public void setEq_location(String eq_location) {
		this.eq_location = eq_location;
	}


	public int getEq_prime_cost() {
		return eq_prime_cost;
	}


	public void setEq_prime_cost(int eq_prime_cost) {
		this.eq_prime_cost = eq_prime_cost;
	}


	public int getDurable() {
		return durable;
	}


	public void setDurable(int durable) {
		this.durable = durable;
	}


	public int getEq_depreciation() {
		return eq_depreciation;
	}


	public void setEq_depreciation(int eq_depreciation) {
		this.eq_depreciation = eq_depreciation;
	}


	public String getEq_depreciatino_type() {
		return eq_depreciatino_type;
	}


	public void setEq_depreciatino_type(String eq_depreciatino_type) {
		this.eq_depreciatino_type = eq_depreciatino_type;
	}


	public String getDp_account_code() {
		return dp_account_code;
	}


	public void setDp_account_code(String dp_account_code) {
		this.dp_account_code = dp_account_code;
	}


	public String getDp_code() {
		return dp_code;
	}


	public void setDp_code(String dp_code) {
		this.dp_code = dp_code;
	}
	
	
	
}