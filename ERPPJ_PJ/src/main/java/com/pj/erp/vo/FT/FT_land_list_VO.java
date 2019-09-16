package com.pj.erp.vo.FT;

import java.sql.Date;

public class FT_land_list_VO {

	String land_code;
	String department_code;
	String land_name;
	String land_address;
	Date land_regdate;
	long land_cost;
	
	public FT_land_list_VO() {	}

	public String getLand_code() {
		return land_code;
	}

	public void setLand_code(String land_code) {
		this.land_code = land_code;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getLand_name() {
		return land_name;
	}

	public void setLand_name(String land_name) {
		this.land_name = land_name;
	}

	public String getLand_address() {
		return land_address;
	}

	public void setLand_address(String land_address) {
		this.land_address = land_address;
	}

	public Date getLand_regdate() {
		return land_regdate;
	}

	public void setLand_regdate(Date land_regdate) {
		this.land_regdate = land_regdate;
	}

	public long getLand_cost() {
		return land_cost;
	}

	public void setLand_cost(long land_cost) {
		this.land_cost = land_cost;
	}
	
	
	
}