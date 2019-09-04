package com.pj.erp.vo.MS;

import java.sql.Date;
import java.sql.Timestamp;

public class MS_plan {
	//경영지원
	private String plan_code;			//기획서 코드
	private String plan_name;			//기획명
	private String username;			//기획제안자
	private String position_code;		//책임자
	private Timestamp plan_regdate;		//기획등록일
	private Date plan_startdate;	//기획 시작 예정일
	private Date plan_enddate;		//기획 종료 목표일
	private String plan_objective;		//기획 목표
	private String plan_state;			//기획 상태
	private String plan_proposal;		//상세 기획안 파일
	
	public MS_plan() {}

	public String getPlan_code() {
		return plan_code;
	}

	public void setPlan_code(String plan_code) {
		this.plan_code = plan_code;
	}

	public String getPlan_name() {
		return plan_name;
	}

	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
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

	public Timestamp getPlan_regdate() {
		return plan_regdate;
	}

	public void setPlan_regdate(Timestamp plan_regdate) {
		this.plan_regdate = plan_regdate;
	}

	public Date getPlan_startdate() {
		return plan_startdate;
	}

	public void setPlan_startdate(Date plan_startdate) {
		this.plan_startdate = plan_startdate;
	}

	public Date getPlan_enddate() {
		return plan_enddate;
	}

	public void setPlan_enddate(Date plan_enddate) {
		this.plan_enddate = plan_enddate;
	}

	public String getPlan_objective() {
		return plan_objective;
	}

	public void setPlan_objective(String plan_objective) {
		this.plan_objective = plan_objective;
	}

	public String getPlan_state() {
		return plan_state;
	}

	public void setPlan_state(String plan_state) {
		this.plan_state = plan_state;
	}

	public String getPlan_proposal() {
		return plan_proposal;
	}

	public void setPlan_proposal(String plan_proposal) {
		this.plan_proposal = plan_proposal;
	}
	
}
