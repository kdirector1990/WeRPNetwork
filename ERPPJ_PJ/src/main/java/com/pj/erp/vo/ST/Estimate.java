package com.pj.erp.vo.ST;

import java.sql.Date;

public class Estimate {
	
	private String ep_code; // 견적 코드
	private String customer_code;	// 거래처코드
	private String account_code;	// 계정코드
	private int ep_amount;	// 수량
	private int ep_price;	// 공급가
	private Date ep_deliver_date; // 납품 예정일
	private Date ep_reg_date;	// 견적 등록일
	private String username;	// 담당자 (코드)
	private String e_approval_code;	// 전결 현황 코드
	private String eas_code;	// 전결 라인 코드
	private String position_code;	// 현재 결제자
	private String product_name;	// 품명
	private String customer_name;	// 거래처명
	private String detail_ac_code;	// 제품 코드
	private String e_name;	// 이름
	private String search_release_code;	// 제품명
	
	// 생성자
	public Estimate() {}
	
	
	// getter, setter
	public String getEp_code() {
		return ep_code;
	}

	public void setEp_code(String ep_code) {
		this.ep_code = ep_code;
	}

	public String getCustomer_code() {
		return customer_code;
	}

	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}

	public String getAccount_code() {
		return account_code;
	}

	public void setAccount_code(String account_code) {
		this.account_code = account_code;
	}

	public int getEp_amount() {
		return ep_amount;
	}

	public void setEp_amount(int ep_amount) {
		this.ep_amount = ep_amount;
	}

	public int getEp_price() {
		return ep_price;
	}

	public void setEp_price(int ep_price) {
		this.ep_price = ep_price;
	}
	
	public Date getEp_deliver_date() {
		return ep_deliver_date;
	}


	public void setEp_deliver_date(Date ep_deliver_date) {
		this.ep_deliver_date = ep_deliver_date;
	}


	public Date getEp_reg_date() {
		return ep_reg_date;
	}


	public void setEp_reg_date(Date ep_reg_date) {
		this.ep_reg_date = ep_reg_date;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getE_approval_code() {
		return e_approval_code;
	}

	public void setE_approval_code(String e_approval_code) {
		this.e_approval_code = e_approval_code;
	}

	public String getEas_code() {
		return eas_code;
	}

	public void setEas_code(String eas_code) {
		this.eas_code = eas_code;
	}

	public String getPosition_code() {
		return position_code;
	}

	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public String getCustomer_name() {
		return customer_name;
	}


	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}


	public String getDetail_ac_code() {
		return detail_ac_code;
	}


	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}


	public String getE_name() {
		return e_name;
	}


	public void setE_name(String e_name) {
		this.e_name = e_name;
	}


	public String getSearch_release_code() {
		return search_release_code;
	}


	public void setSearch_release_code(String search_release_code) {
		this.search_release_code = search_release_code;
	}
	
	


	

}
