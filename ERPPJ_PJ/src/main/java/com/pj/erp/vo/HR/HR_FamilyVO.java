package com.pj.erp.vo.HR;

import java.sql.Timestamp;

public class HR_FamilyVO {

	private String username;
	private String f_name;
	private String f_type;
	private String f_cohabitation;
	private Timestamp f_born;
	private String f_born_type;
	
	public HR_FamilyVO() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_type() {
		return f_type;
	}

	public void setF_type(String f_type) {
		this.f_type = f_type;
	}

	public String getF_cohabitation() {
		return f_cohabitation;
	}

	public void setF_cohabitation(String f_cohabitation) {
		this.f_cohabitation = f_cohabitation;
	}

	public Timestamp getF_born() {
		return f_born;
	}

	public void setF_born(Timestamp f_born) {
		this.f_born = f_born;
	}

	public String getF_born_type() {
		return f_born_type;
	}

	public void setF_born_type(String f_born_type) {
		this.f_born_type = f_born_type;
	}
	
	
}
