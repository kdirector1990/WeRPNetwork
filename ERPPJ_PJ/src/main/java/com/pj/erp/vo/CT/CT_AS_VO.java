package com.pj.erp.vo.CT;

import java.sql.Timestamp;

public class CT_AS_VO {
	
	//멤버변수
	String cas_code;			//as코드
	String department_code;		//부서코드
	String username;			//사원명
	String cas_title;			//as제목
	String cas_content;			//as내용
	String cas_uri;				//에러 URL	
	Timestamp cas_date;			//글 올린 시각
	String cas_result;			//as 처리 결과
	int cas_state;				//as 상태
	String department_name;
	
	//생성자
	public CT_AS_VO() {}

	//getter, setter
	public String getCas_code() {
		return cas_code;
	}

	public void setCas_code(String cas_code) {
		this.cas_code = cas_code;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCas_title() {
		return cas_title;
	}

	public void setCas_title(String cas_title) {
		this.cas_title = cas_title;
	}

	public String getCas_content() {
		return cas_content;
	}

	public void setCas_content(String cas_content) {
		this.cas_content = cas_content;
	}

	public String getCas_uri() {
		return cas_uri;
	}

	public void setCas_uri(String cas_uri) {
		this.cas_uri = cas_uri;
	}

	public Timestamp getCas_date() {
		return cas_date;
	}

	public void setCas_date(Timestamp cas_date) {
		this.cas_date = cas_date;
	}

	public String getCas_result() {
		return cas_result;
	}

	public void setCas_result(String cas_result) {
		this.cas_result = cas_result;
	}

	public int getCas_state() {
		return cas_state;
	}

	public void setCas_state(int cas_state) {
		this.cas_state = cas_state;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	
	
}
