package com.pj.erp.vo.ST;

public class TaxDetails {
	// 세금 명세서
	
	private String stored_name;	// 입고처 (거래처명)
	private String license_number;	// 사업자 번호
	private String bs_name; 	// 대표자명
	private String release_date;	// 등록일자
	private String bs_condition;	// 사업 부문
	private String e_name;	// 담당자
	private int unit_cost;	// 단가
	private int release_count;	// 출고량
	
	
	public TaxDetails() {}


	public String getStored_name() {
		return stored_name;
	}


	public void setStored_name(String stored_name) {
		this.stored_name = stored_name;
	}


	public String getLicense_number() {
		return license_number;
	}


	public void setLicense_number(String license_number) {
		this.license_number = license_number;
	}


	public String getBs_name() {
		return bs_name;
	}


	public void setBs_name(String bs_name) {
		this.bs_name = bs_name;
	}


	public String getRelease_date() {
		return release_date;
	}


	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}


	public String getBs_condition() {
		return bs_condition;
	}


	public void setBs_condition(String bs_condition) {
		this.bs_condition = bs_condition;
	}


	public String getE_name() {
		return e_name;
	}


	public void setE_name(String e_name) {
		this.e_name = e_name;
	}


	public int getUnit_cost() {
		return unit_cost;
	}


	public void setUnit_cost(int unit_cost) {
		this.unit_cost = unit_cost;
	}


	public int getRelease_count() {
		return release_count;
	}


	public void setRelease_count(int release_count) {
		this.release_count = release_count;
	}
	
	

}
