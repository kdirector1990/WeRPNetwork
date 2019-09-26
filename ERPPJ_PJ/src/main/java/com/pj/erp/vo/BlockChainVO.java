package com.pj.erp.vo;

public class BlockChainVO {
	
	//변수
	String ether_code;
	String department_code;
	String Wallet_code;
	String department_name;
	
	//생성자
	public void BlockChainVO() {}

	//getter, setter
	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getWallet_code() {
		return Wallet_code;
	}

	public void setWallet_code(String wallet_code) {
		Wallet_code = wallet_code;
	}

	public String getEther_code() {
		return ether_code;
	}

	public void setEther_code(String ether_code) {
		this.ether_code = ether_code;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	

}
