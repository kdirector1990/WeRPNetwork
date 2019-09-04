package com.pj.erp.vo.CT;

import java.sql.Date;

public class CT_VO {

	//멤버변수
	private String ceq_code;			//전산설비코드
	private String ceq_name;			//설비명
	private String ceq_type;			//보유구분(1: 보유 2: 대여 3: 폐기))
	private Date ceq_acquire_date; 		//구입일
	private String department_code;		//사용부서
	private String ceq_location;		//위치
	private int ceq_prime_cost;			//매입가
	private int ceq_durable;			//예상연수내용
	private int ceq_depreciation; 		//감가상각여부
	private String ceq_depreciation_type;//감가상각법
	
	//생성자
	public CT_VO() {}
	
	//getter,setter

	public String getCeq_code() {
		return ceq_code;
	}

	public void setCeq_code(String ceq_code) {
		this.ceq_code = ceq_code;
	}

	public String getCeq_name() {
		return ceq_name;
	}

	public void setCeq_name(String ceq_name) {
		this.ceq_name = ceq_name;
	}

	public String getCeq_type() {
		return ceq_type;
	}

	public void setCeq_type(String ceq_type) {
		this.ceq_type = ceq_type;
	}

	public Date getCeq_acquire_date() {
		return ceq_acquire_date;
	}

	public void setCeq_acquire_date(Date ceq_acquire_date) {
		this.ceq_acquire_date = ceq_acquire_date;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getCeq_location() {
		return ceq_location;
	}

	public void setCeq_location(String ceq_location) {
		this.ceq_location = ceq_location;
	}

	public int getCeq_prime_cost() {
		return ceq_prime_cost;
	}

	public void setCeq_prime_cost(int ceq_prime_cost) {
		this.ceq_prime_cost = ceq_prime_cost;
	}

	public int getCeq_durable() {
		return ceq_durable;
	}

	public void setCeq_durable(int ceq_durable) {
		this.ceq_durable = ceq_durable;
	}

	public int getCeq_depreciation() {
		return ceq_depreciation;
	}

	public void setCeq_depreciation(int ceq_depreciation) {
		this.ceq_depreciation = ceq_depreciation;
	}

	public String getCeq_depreciation_type() {
		return ceq_depreciation_type;
	}

	public void setCeq_depreciation_type(String ceq_depreciation_type) {
		this.ceq_depreciation_type = ceq_depreciation_type;
	}
	
	
	
}
