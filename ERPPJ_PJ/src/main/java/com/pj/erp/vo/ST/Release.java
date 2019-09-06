package com.pj.erp.vo.ST;

import java.sql.Date;

public class Release {
	
	private String  sar_code;	// 입출고 코드
	private String detail_ac_code;	// 제품 코드
	private int unit_cost;	// 단가
	private int stored_count;	// 입고량
	private int release_count;	// 출고량
	private String stored_name;	// 입고처
	private String release_name;	// 출고처
	private String sar_type;	// 구분
	private String eas_code;	// 전결 라인 코드
	private String e_approval_code;	// 전결 현황 코드
	private int state;	// 상태
	private Date release_date;	//출고 일자
	
	// 생성자
	public Release() {}
	
	// setter, getter
	public String getSar_code() {
		return sar_code;
	}

	public void setSar_code(String sar_code) {
		this.sar_code = sar_code;
	}

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public int getUnit_cost() {
		return unit_cost;
	}

	public void setUnit_cost(int unit_cost) {
		this.unit_cost = unit_cost;
	}

	public int getStored_count() {
		return stored_count;
	}

	public void setStored_count(int stored_count) {
		this.stored_count = stored_count;
	}

	public int getRelease_count() {
		return release_count;
	}

	public void setRelease_count(int release_count) {
		this.release_count = release_count;
	}

	public String getStored_name() {
		return stored_name;
	}

	public void setStored_name(String stored_name) {
		this.stored_name = stored_name;
	}

	public String getRelease_name() {
		return release_name;
	}

	public void setRelease_name(String release_name) {
		this.release_name = release_name;
	}

	public String getSar_type() {
		return sar_type;
	}

	public void setSar_type(String sar_type) {
		this.sar_type = sar_type;
	}

	public String getEas_code() {
		return eas_code;
	}

	public void setEas_code(String eas_code) {
		this.eas_code = eas_code;
	}

	public String getE_approval_code() {
		return e_approval_code;
	}

	public void setE_approval_code(String e_approval_code) {
		this.e_approval_code = e_approval_code;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getRelease_date() {
		return release_date;
	}

	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	
	
	
	
}
