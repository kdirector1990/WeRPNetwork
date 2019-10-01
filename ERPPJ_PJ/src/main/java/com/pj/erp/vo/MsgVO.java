package com.pj.erp.vo;

public class MsgVO {

	//멤버변수
	String username; //사번
	String e_name;	//이름
	String department_code;	//부서코드
	String department_name; //부서이름
	String rank_code;	//직급

	String to_user;			//발신자
	String from_user;		//수신자
	String msg_content;		//내용
	String msg_state;		//내용확인
	
	//생성자
	public void MsgVO() {}

	//getter, setter
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getRank_code() {
		return rank_code;
	}

	public void setRank_code(String rank_code) {
		this.rank_code = rank_code;
	}

	public String getTo_user() {
		return to_user;
	}

	public void setTo_user(String to_user) {
		this.to_user = to_user;
	}

	public String getFrom_user() {
		return from_user;
	}

	public void setFrom_user(String from_user) {
		this.from_user = from_user;
	}

	public String getMsg_content() {
		return msg_content;
	}

	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}

	public String getMsg_state() {
		return msg_state;
	}

	public void setMsg_state(String msg_state) {
		this.msg_state = msg_state;
	}

	
	
}
