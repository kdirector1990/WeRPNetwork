package com.pj.erp.vo.ST;

import java.sql.Date;

public class SalePlan {
	
	private String position_code;	// 현재 결제자
	private String saleplan_code;	// 판매 계획 코드
	private String account_code;	// 계정 코드
	private Date s_plan_start;	// 기간 시작
	private Date s_plan_end;	// 기간 종료
	private int ef_price;	//예상 판매 가격
	private int ef_amount;	// 예상 판매 수량
	
	private String saleplan_name;	// 품명
	private String sp_unit;	// 단위
	private int saleplan_amount;	// 계획 수량
	private String sp_note;	// 비고
	
	private String eas_code;	// 전결 라인 코드
	private String e_approval_code;	// 전결 현황 코드
	private int jr_state;	// 처리상태
	
	// 생성자
	public SalePlan() {}
	
	// getter, setter
	public String getPosition_code() {
		return position_code;
	}

	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}

	public String getSaleplan_code() {
		return saleplan_code;
	}

	public void setSaleplan_code(String saleplan_code) {
		this.saleplan_code = saleplan_code;
	}

	public String getAccount_code() {
		return account_code;
	}

	public void setAccount_code(String account_code) {
		this.account_code = account_code;
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

	public String getSaleplan_name() {
		return saleplan_name;
	}

	public void setSaleplan_name(String saleplan_name) {
		this.saleplan_name = saleplan_name;
	}
	
	public String getSp_unit() {
		return sp_unit;
	}

	public void setSp_unit(String sp_unit) {
		this.sp_unit = sp_unit;
	}

	public int getSaleplan_amount() {
		return saleplan_amount;
	}

	public void setSaleplan_amount(int saleplan_amount) {
		this.saleplan_amount = saleplan_amount;
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
	
	
	
	
}
