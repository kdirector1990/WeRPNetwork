package com.pj.erp.vo;

import java.sql.Date;

public class HR_ApVO {

	private String ap_code;
	private String ap_name;
	private String ap_content;
	private Date ap_reg_date;
	private Date ap_est_date;
	private String ap_status;
	
	public HR_ApVO() {}

	public String getAp_code() {
		return ap_code;
	}

	public void setAp_code(String ap_code) {
		this.ap_code = ap_code;
	}

	public String getAp_name() {
		return ap_name;
	}

	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}

	public String getAp_content() {
		return ap_content;
	}

	public void setAp_content(String ap_content) {
		this.ap_content = ap_content;
	}

	public Date getAp_reg_date() {
		return ap_reg_date;
	}

	public void setAp_reg_date(Date ap_reg_date) {
		this.ap_reg_date = ap_reg_date;
	}

	public Date getAp_est_date() {
		return ap_est_date;
	}

	public void setAp_est_date(Date ap_est_date) {
		this.ap_est_date = ap_est_date;
	}

	public String getAp_status() {
		return ap_status;
	}

	public void setAp_status(String ap_status) {
		this.ap_status = ap_status;
	}
	
	
}
