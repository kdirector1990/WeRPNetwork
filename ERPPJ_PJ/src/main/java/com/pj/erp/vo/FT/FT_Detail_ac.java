package com.pj.erp.vo.FT;

public class FT_Detail_ac {
	
	//멤버변수
	String accounts_code;	//계정코드2
	String detail_ac_code;  //상세계정코드
	String account_name;	//계정명
	
	//디폴트 생성자
	public void FT_Detail_ac() {}

	
	//getter, setter
	public String getAccounts_code() {
		return accounts_code;
	}

	public void setAccounts_code(String accounts_code) {
		this.accounts_code = accounts_code;
	}

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	
	

}
