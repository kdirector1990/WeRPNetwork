package com.pj.erp.vo;

public class BlockChainVO {
	
	//변수
	String department_code;
	String department_name;
	String department_group_code;
	String Wallet_code;
	
	//생성자
	public void BlockChainVO() {}

	//getter, setter
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

	public String getDepartment_group_code() {
		return department_group_code;
	}

	public void setDepartment_group_code(String department_group_code) {
		this.department_group_code = department_group_code;
	}

	public String getWallet_code() {
		return Wallet_code;
	}

	public void setWallet_code(String wallet_code) {
		Wallet_code = wallet_code;
	}
	
	

}
