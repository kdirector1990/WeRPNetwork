package com.pj.erp.vo;

import java.sql.Timestamp;

public class HR_VO {
	
	private String username;
	private String password;
	private String e_picture;
	private String e_name;
	private int e_gender;
	private String e_type;
	private String e_code;
	private String e_hp;
	private String e_address;
	private String e_mailcode;
	private String department_code;
	private String department_name;
	private String rank_code;
	private String position_code;
	private String position_name;
	private int level_step;
	private String e_nfcCodeNFC;	
	private Timestamp start_date;
	private int enabled;
	
	public HR_VO() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getE_picture() {
		return e_picture;
	}

	public void setE_picture(String e_picture) {
		this.e_picture = e_picture;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public int getE_gender() {
		return e_gender;
	}

	public void setE_gender(int e_gender) {
		this.e_gender = e_gender;
	}

	public String getE_type() {
		return e_type;
	}

	public void setE_type(String e_type) {
		this.e_type = e_type;
	}

	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}

	public String getE_hp() {
		return e_hp;
	}

	public void setE_hp(String e_hp) {
		this.e_hp = e_hp;
	}

	public String getE_address() {
		return e_address;
	}

	public void setE_address(String e_address) {
		this.e_address = e_address;
	}

	public String getE_mailcode() {
		return e_mailcode;
	}

	public void setE_mailcode(String e_mailcode) {
		this.e_mailcode = e_mailcode;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}
	
	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getRank_code() {
		return rank_code;
	}

	public void setRank_code(String rank_code) {
		this.rank_code = rank_code;
	}

	public String getPosition_code() {
		return position_code;
	}

	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}
	
	public String getPosition_name() {
		return position_name;
	}
	
	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	public int getLevel_step() {
		return level_step;
	}

	public void setLevel_step(int level_step) {
		this.level_step = level_step;
	}

	public String getE_nfcCodeNFC() {
		return e_nfcCodeNFC;
	}

	public void setE_nfcCodeNFC(String e_nfcCodeNFC) {
		this.e_nfcCodeNFC = e_nfcCodeNFC;
	}

	public Timestamp getStart_date() {
		return start_date;
	}

	public void setStart_date(Timestamp start_date) {
		this.start_date = start_date;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
		
		
	
}
