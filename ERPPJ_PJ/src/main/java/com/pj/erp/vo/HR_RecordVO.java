package com.pj.erp.vo;

import java.sql.Date;

public class HR_RecordVO {

	private String position_record_cord;
	private String record_title;
	private String record_division;
	private Date record_date;
	private String recordInfo;
	private String old_recordInfo;
	private String new_recordInfo;
	
	public HR_RecordVO() {}

	public String getPosition_record_cord() {
		return position_record_cord;
	}

	public void setPosition_record_cord(String position_record_cord) {
		this.position_record_cord = position_record_cord;
	}

	public String getRecord_title() {
		return record_title;
	}

	public void setRecord_title(String record_title) {
		this.record_title = record_title;
	}

	public String getRecord_division() {
		return record_division;
	}

	public void setRecord_division(String record_division) {
		this.record_division = record_division;
	}

	public Date getRecord_date() {
		return record_date;
	}

	public void setRecord_date(Date record_date) {
		this.record_date = record_date;
	}

	public String getRecordInfo() {
		return recordInfo;
	}

	public void setRecordInfo(String recordInfo) {
		this.recordInfo = recordInfo;
	}

	public String getOld_recordInfo() {
		return old_recordInfo;
	}

	public void setOld_recordInfo(String old_recordInfo) {
		this.old_recordInfo = old_recordInfo;
	}

	public String getNew_recordInfo() {
		return new_recordInfo;
	}

	public void setNew_recordInfo(String new_recordInfo) {
		this.new_recordInfo = new_recordInfo;
	}

	
	
	
}
