package com.pj.erp.vo.FT;

public class FT_accounts_balance {
	int acc_level;
	String lg_name;
	String accounts_name;
	String account_name;
	
	double debtor_total; 
	
	double creditor_total; 
	
	public FT_accounts_balance() {
		 
	}

	public int getAcc_level() {
		return acc_level;
	}

	public void setAcc_level(int acc_level) {
		this.acc_level = acc_level;
	}

	public String getLg_name() {
		return lg_name;
	}

	public void setLg_name(String lg_name) {
		this.lg_name = lg_name;
	}

	public String getAccounts_name() {
		return accounts_name;
	}

	public void setAccounts_name(String accounts_name) {
		this.accounts_name = accounts_name;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}

	public double getDebtor_total() {
		return debtor_total;
	}

	public void setDebtor_total(double debtor_total) {
		this.debtor_total = debtor_total;
	}

	public double getCreditor_total() {
		return creditor_total;
	}

	public void setCreditor_total(double creditor_total) {
		this.creditor_total = creditor_total;
	}
 
	 
	
	

}
