package com.pj.erp.vo.FT;

public class FT_Note {
	private String bill_r_code; // 거래처 코드
	private String noteNumber; // 거래처 코드
	private String customer_code; // 거래처명
	private String customer_name; // 거래처명
	private String payment_price; // 사업자번호
	private String payment_date; // 지점명
	private String payment_expriration; // 신용도
	private String payment_interest; // 거래처구분코드
	
	
	public String getBill_r_code() {
		return bill_r_code;
	}
	public void setBill_r_code(String bill_r_code) {
		this.bill_r_code = bill_r_code;
	}
	public String getNoteNumber() {
		return noteNumber;
	}
	public void setNoteNumber(String noteNumber) {
		this.noteNumber = noteNumber;
	}
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
	public String getPayment_price() {
		return payment_price;
	}
	public void setPayment_price(String payment_price) {
		this.payment_price = payment_price;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getPayment_expriration() {
		return payment_expriration;
	}
	public void setPayment_expriration(String payment_expriration) {
		this.payment_expriration = payment_expriration;
	}
	public String getPayment_interest() {
		return payment_interest;
	}
	public void setPayment_interest(String payment_interest) {
		this.payment_interest = payment_interest;
	}
	
	
}
