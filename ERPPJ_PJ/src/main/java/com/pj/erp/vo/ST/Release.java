package com.pj.erp.vo.ST;

import java.sql.Timestamp;

public class Release {
	
	private String sar_code;	// 입출고 코드
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
	private Timestamp release_date;	// 출고 등록일
	private String username;	// 담당자
	private String position_code; // 현재 결제자
	private String customer_code;	// 거래처 코드
	private String product_name;	// 품명
	private String e_name;	// 담당자명
	private String salelist_code;	// 판매대장코드
	private String customer_name;	// 거래처명
	
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

	public Timestamp getRelease_date() {
		return release_date;
	}

	public void setRelease_date(Timestamp release_date) {
		this.release_date = release_date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPosition_code() {
		return position_code;
	}

	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}

	public String getCustomer_code() {
		return customer_code;
	}

	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getSalelist_code() {
		return salelist_code;
	}

	public void setSalelist_code(String salelist_code) {
		this.salelist_code = salelist_code;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	
	
}
