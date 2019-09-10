package com.pj.erp.vo.CT;

import java.sql.Timestamp;

public class CT_RP_VO {
	
	//멤버변수
	String rr_code;				//수리일지코드
	Timestamp rr_reg_date;		//등록일
	String rr_title;			//제목
	String rr_content;			//내용
	String ceq_code;			//전산설비코드
	int cas_state;				//처리상태
	String rr_repair_type;		//수리방법
	int rr_cost;				//금액
	//생성자
	public void CT_RP_VO() {}

	//getter, setter
	public String getRr_code() {
		return rr_code;
	}

	public void setRr_code(String rr_code) {
		this.rr_code = rr_code;
	}

	public Timestamp getRr_reg_date() {
		return rr_reg_date;
	}

	public void setRr_reg_date(Timestamp rr_reg_date) {
		this.rr_reg_date = rr_reg_date;
	}

	public String getRr_title() {
		return rr_title;
	}

	public void setRr_title(String rr_title) {
		this.rr_title = rr_title;
	}

	public String getRr_content() {
		return rr_content;
	}

	public void setRr_content(String rr_content) {
		this.rr_content = rr_content;
	}

	public String getCeq_code() {
		return ceq_code;
	}

	public void setCeq_code(String ceq_code) {
		this.ceq_code = ceq_code;
	}

	public int getCas_state() {
		return cas_state;
	}

	public void setCas_state(int cas_state) {
		this.cas_state = cas_state;
	}

	public String getRr_repair_type() {
		return rr_repair_type;
	}

	public void setRr_repair_type(String rr_repair_type) {
		this.rr_repair_type = rr_repair_type;
	}

	public int getRr_cost() {
		return rr_cost;
	}

	public void setRr_cost(int rr_cost) {
		this.rr_cost = rr_cost;
	}
	
	

}
