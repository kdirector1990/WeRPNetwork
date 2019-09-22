package com.pj.erp.vo.HR;

public class HR_accounts_balance {
	String Detail_ac_code;
	String account_name;
	
	int debtor_value;
	int l_count_value;
	
	int credit_value;
	int r_count_value;
	
	public HR_accounts_balance() {
		 
	}

	public String getDetail_ac_code() {
		return Detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		Detail_ac_code = detail_ac_code;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}

	public int getDebtor_value() {
		return debtor_value;
	}

	public void setDebtor_value(int debtor_value) {
		this.debtor_value = debtor_value;
	}

	public int getL_count_value() {
		return l_count_value;
	}

	public void setL_count_value(int l_count_value) {
		this.l_count_value = l_count_value;
	}

	public int getCredit_value() {
		return credit_value;
	}

	public void setCredit_value(int credit_value) {
		this.credit_value = credit_value;
	}

	public int getR_count_value() {
		return r_count_value;
	}

	public void setR_count_value(int r_count_value) {
		this.r_count_value = r_count_value;
	}
	
	
	

}
