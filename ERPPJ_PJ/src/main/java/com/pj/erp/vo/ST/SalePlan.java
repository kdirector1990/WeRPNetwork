package com.pj.erp.vo.ST;

import java.sql.Date;

public class SalePlan {
	
	private String saleplan_code;	// 판매 계획 코드
	private Date s_plan_start;	// 기간 시작
	private Date s_plan_end;	// 기간 종료
	private int ef_price;	//예상 판매 가격
	private int ef_amount;	// 예상 판매 수량
	private String sp_unit;	// 단위
	private String sp_note;	// 비고
	private String eas_code;	// 전결 라인 코드
	private String e_approval_code;	// 전결 현황 코드
	private int jr_state;	// 처리상태
	private String detail_ac_code;	// 상세 계정 코드
	private String product_name;	// 제품명
	
	// 생성자
	public SalePlan() {}
	
	// getter, setter
	public String getSaleplan_code() {
		return saleplan_code;
	}

	public void setSaleplan_code(String saleplan_code) {
		this.saleplan_code = saleplan_code;
	}

	public Date getS_plan_start() {
		return s_plan_start;
	}

	public void setS_plan_start(Date s_plan_start) {
		this.s_plan_start = s_plan_start;
	}

	public Date getS_plan_end() {
		return s_plan_end;
	}

	public void setS_plan_end(Date s_plan_end) {
		this.s_plan_end = s_plan_end;
	}

	public int getEf_price() {
		return ef_price;
	}

	public void setEf_price(int ef_price) {
		this.ef_price = ef_price;
	}

	public int getEf_amount() {
		return ef_amount;
	}

	public void setEf_amount(int ef_amount) {
		this.ef_amount = ef_amount;
	}

	public String getSp_unit() {
		return sp_unit;
	}

	public void setSp_unit(String sp_unit) {
		this.sp_unit = sp_unit;
	}

	public String getSp_note() {
		return sp_note;
	}

	public void setSp_note(String sp_note) {
		this.sp_note = sp_note;
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

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	
}
