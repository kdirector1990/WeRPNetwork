package com.pj.erp.vo.MF;

import java.sql.Date;

//생산계획 
public class MF_plan {
	private String p_pp_code;		//생산계획코드
	private String bom_code;		//BOM코드
	private String product_code;	//제품계정코드
	
	private String product_name;	//제품명
	
	private Date start_date;		//기간시작
	private Date end_date;			//기간종료
	private int ef_cost;			//예상 생산 원가
	private int ef_amount;		//목표 생산 수량
	private String eas_code;		//전결라인코드
	private String e_approval_code;	//전결현황코드
	public String getP_pp_code() {
		return p_pp_code;
	}
	public void setP_pp_code(String p_pp_code) {
		this.p_pp_code = p_pp_code;
	}
	public String getBom_code() {
		return bom_code;
	}
	public void setBom_code(String bom_code) {
		this.bom_code = bom_code;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public int getEf_cost() {
		return ef_cost;
	}
	public void setEf_cost(int ef_cost) {
		this.ef_cost = ef_cost;
	}
	public int getEf_amount() {
		return ef_amount;
	}
	public void setEf_amount(int ef_amount) {
		this.ef_amount = ef_amount;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
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
		
	
}
