package com.pj.erp.vo.ST;

import java.sql.Timestamp;

public class SaleList {
	private String salelist_code;	// 판매대장코드
	private String username;	// 판매 사원
	private String detail_ac_code;	// 상세 계정 코드
	private String customer_code;	// 거래처 코드
	private Timestamp reg_date;	// 등록일
	private String unit;	// 단위
	private int amount; // 수량
	private int price;	// 가격
	private String note;	// 비고
	private String release_state;	// 출고 여부
	private String eas_code;	// 전결 라인 코드
	private String e_approval_code;	// 전결 현황 코드
	private int jr_state;	// 처리 상태
	private String ep_code;	// 견적 코드
	
	private String salelist_name; // 판매명
	
	// 생성자
	public SaleList() {}
	
	// getter setter
	public String getSalelist_code() {
		return salelist_code;
	}

	public void setSalelist_code(String salelist_code) {
		this.salelist_code = salelist_code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public String getCustomer_code() {
		return customer_code;
	}

	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getRelease_state() {
		return release_state;
	}

	public void setRelease_state(String release_state) {
		this.release_state = release_state;
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

	public int getJr_state() {
		return jr_state;
	}

	public void setJr_state(int jr_state) {
		this.jr_state = jr_state;
	}

	public String getEp_code() {
		return ep_code;
	}

	public void setEp_code(String ep_code) {
		this.ep_code = ep_code;
	}

	public String getSalelist_name() {
		return salelist_name;
	}

	public void setSalelist_name(String salelist_name) {
		this.salelist_name = salelist_name;
	}
	
	
	

}