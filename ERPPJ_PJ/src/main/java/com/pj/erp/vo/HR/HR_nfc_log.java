package com.pj.erp.vo.HR;

public class HR_nfc_log {
	
	//멤버변수
	String tag_date; // nfc 접촉시간
	String nfc_code; // nfc 코드
	String username; // 사번
	String e_name;	// 사원명
	
	//디폴트 생성자
	public HR_nfc_log() {}

	
	//getter, setter
	public String getTag_date() {
		return tag_date;
	}

	public void setTag_date(String tag_date) {
		this.tag_date = tag_date;
	}

	public String getNfc_code() {
		return nfc_code;
	}

	public void setNfc_code(String nfc_code) {
		this.nfc_code = nfc_code;
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

	
	 
	

}
