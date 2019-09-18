package com.pj.erp.vo.FT;

public class FT_Ledger {
	private String customer_code; // 거래처 코드
	private String customer_name; // 거래처명
	private String license_number; // 사업자번호
	private String before_value; // 지점명
	private String deal_state; // 거래처구분코드
	private String bs_master; // 대표자
	private String debtor_value; // 차변
	private String creditor_value; // 대변
	private String l_count_value; // 차변수량
	private String r_count_value; // 대변수량
	
	
	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getLicense_number() {
		return license_number;
	}
	public void setLicense_number(String license_number) {
		this.license_number = license_number;
	}
	public String getBefore_value() {
		return before_value;
	}
	public void setBefore_value(String before_value) {
		this.before_value = before_value;
	}
	public String getDeal_state() {
		return deal_state;
	}
	public void setDeal_state(String deal_state) {
		this.deal_state = deal_state;
	}
	public String getBs_master() {
		return bs_master;
	}
	public void setBs_master(String bs_master) {
		this.bs_master = bs_master;
	}
	public String getDebtor_value() {
		return debtor_value;
	}
	public void setDebtor_value(String debtor_value) {
		this.debtor_value = debtor_value;
	}
	public String getCreditor_value() {
		return creditor_value;
	}
	public void setCreditor_value(String creditor_value) {
		this.creditor_value = creditor_value;
	}
	public String getL_count_value() {
		return l_count_value;
	}
	public void setL_count_value(String l_count_value) {
		this.l_count_value = l_count_value;
	}
	public String getR_count_value() {
		return r_count_value;
	}
	public void setR_count_value(String r_count_value) {
		this.r_count_value = r_count_value;
	}
	
	
	
	
	
}
