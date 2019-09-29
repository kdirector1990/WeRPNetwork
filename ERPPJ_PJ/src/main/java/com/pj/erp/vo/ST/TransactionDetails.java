package com.pj.erp.vo.ST;

import java.sql.Timestamp;

public class TransactionDetails {
	// 거래 명세서 vo
	
	private String sar_code;	// 입출고 코드
	private Timestamp reg_date;	// 거래 요청일
	private String release_date;	// 출고일자
	private String stored_name;	// 입고처
	private String release_name;	// 출고처
	private String sar_type;	// 출고 구분
	private int amount;	// 수량
	private String e_name;	// 담당자
	private int unit_cost;	// 단가
	private String product_name;	// 품목
	
	
	public TransactionDetails() {}

	public String getSar_code() {
		return sar_code;
	}

	public void setSar_code(String sar_code) {
		this.sar_code = sar_code;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
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

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getUnit_cost() {
		return unit_cost;
	}

	public void setUnit_cost(int unit_cost) {
		this.unit_cost = unit_cost;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	

}
