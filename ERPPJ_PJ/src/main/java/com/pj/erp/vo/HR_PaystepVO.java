package com.pj.erp.vo;

public class HR_PaystepVO {

	//멤버변수
	int paystep_code;  //연봉코드
	String rank_code;  //직급코드
	int BASE_PAYMENT;  //기본급
	int ADD_PAYMENT;   // 급호수당
	int EXTENSION_PAYMENT; //연장수당
	
	//디폴트 생성자
	public HR_PaystepVO() {}
	
	//getter, setter
	public int getPaystep_code() {
		return paystep_code;
	}

	public void setPaystep_code(int paystep_code) {
		this.paystep_code = paystep_code;
	}

	public String getRank_code() {
		return rank_code;
	}

	public void setRank_code(String rank_code) {
		this.rank_code = rank_code;
	}

	public int getBASE_PAYMENT() {
		return BASE_PAYMENT;
	}

	public void setBASE_PAYMENT(int bASE_PAYMENT) {
		BASE_PAYMENT = bASE_PAYMENT;
	}

	public int getADD_PAYMENT() {
		return ADD_PAYMENT;
	}

	public void setADD_PAYMENT(int aDD_PAYMENT) {
		ADD_PAYMENT = aDD_PAYMENT;
	}

	public int getEXTENSION_PAYMENT() {
		return EXTENSION_PAYMENT;
	}

	public void setEXTENSION_PAYMENT(int eXTENSION_PAYMENT) {
		EXTENSION_PAYMENT = eXTENSION_PAYMENT;
	}
	
	
}
