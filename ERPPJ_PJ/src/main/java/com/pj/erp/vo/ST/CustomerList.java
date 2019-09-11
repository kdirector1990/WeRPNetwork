package com.pj.erp.vo.ST;

public class CustomerList {
	
	private String customer_code;	// 거래처 코드
	private String license_number;	// 사업자 번호
	private String customer_name;	// 거래처명
	private String branch_name;	// 지점명
	private String customer_credit;	// 신용도
	private int deal_state;	// 거래 상태
	
	public CustomerList() {}
	
	
	// getter setter
	public String getCustomer_code() {
		return customer_code;
	}

	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}

	public String getLicense_number() {
		return license_number;
	}

	public void setLicense_number(String license_number) {
		this.license_number = license_number;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getBranch_name() {
		return branch_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public String getCustomer_credit() {
		return customer_credit;
	}

	public void setCustomer_credit(String customer_credit) {
		this.customer_credit = customer_credit;
	}

	public int getDeal_state() {
		return deal_state;
	}

	public void setDeal_state(int deal_state) {
		this.deal_state = deal_state;
	}
	
	

}
