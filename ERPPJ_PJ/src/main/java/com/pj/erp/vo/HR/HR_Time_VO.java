package com.pj.erp.vo.HR;

import java.sql.Timestamp;

public class HR_Time_VO {

	//멤버변수
	String username;
	String e_name;
	String rownum;
	String tc_code;
	Timestamp tc_come_time;
	Timestamp tc_leave_time;
	String month;
	String year;
	int count;
	
	//생성자
	public HR_Time_VO() {}

	//getter, setter
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

	public String getRownum() {
		return rownum;
	}

	public void setRownum(String rownum) {
		this.rownum = rownum;
	}

	public String getTc_code() {
		return tc_code;
	}

	public void setTc_code(String tc_code) {
		this.tc_code = tc_code;
	}

	public Timestamp getTc_come_time() {
		return tc_come_time;
	}

	public void setTc_come_time(Timestamp tc_come_time) {
		this.tc_come_time = tc_come_time;
	}

	public Timestamp getTc_leave_time() {
		return tc_leave_time;
	}

	public void setTc_leave_time(Timestamp tc_leave_time) {
		this.tc_leave_time = tc_leave_time;
	}
	
	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

}
