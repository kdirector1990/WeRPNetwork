package com.pj.erp.vo.HR;

import java.sql.Date;

public class HR_RecordVO {
	
	private String username;
	private String position_code;
	private String position_code_after;
	private String position_record_code;
	private Date record_date_after;
	private Date record_date;
	private String ap_code;
	
	
	public HR_RecordVO() {}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	public String getPosition_code() {
		return position_code;
	}
	
	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}
	
	
	public String getPosition_code_after() {
		return position_code_after;
	}


	public void setPosition_code_after(String position_code_after) {
		this.position_code_after = position_code_after;
	}


	public String getPosition_record_code() {
		return position_record_code;
	}


	public void setPosition_record_code(String position_record_code) {
		this.position_record_code = position_record_code;
	}


	public Date getRecord_date_after() {
		return record_date_after;
	}


	public void setRecord_date_after(Date record_date_after) {
		this.record_date_after = record_date_after;
	}


	public Date getRecord_date() {
		return record_date;
	}


	public void setRecord_date(Date record_date) {
		this.record_date = record_date;
	}


	public String getAp_code() {
		return ap_code;
	}


	public void setAp_code(String ap_code) {
		this.ap_code = ap_code;
	}
	
	
}
