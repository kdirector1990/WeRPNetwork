package com.pj.erp.vo.FT;

import java.sql.Date;

public class FT_Short_Borrow_List {
	
	String debt_s_code;
	String customer_code;
	String username;
	int debt_s_price;
	Date debt_s_date;
	Date debt_s_expriration;
	double debt_s_interest;
	
	public FT_Short_Borrow_List() {
	}

	public String getDebt_s_code() {
		return debt_s_code;
	}

	public void setDebt_s_code(String debt_s_code) {
		this.debt_s_code = debt_s_code;
	}

	public String getCustomer_code() {
		return customer_code;
	}

	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getDebt_s_price() {
		return debt_s_price;
	}

	public void setDebt_s_price(int debt_s_price) {
		this.debt_s_price = debt_s_price;
	}

	public Date getDebt_s_date() {
		return debt_s_date;
	}

	public void setDebt_s_date(Date debt_s_date) {
		this.debt_s_date = debt_s_date;
	}

	public Date getDebt_s_expriration() {
		return debt_s_expriration;
	}

	public void setDebt_s_expriration(Date debt_s_expriration) {
		this.debt_s_expriration = debt_s_expriration;
	}

	public double getDebt_s_interest() {
		return debt_s_interest;
	}

	public void setDebt_s_interest(double debt_s_interest) {
		this.debt_s_interest = debt_s_interest;
	}
	
	
	
	
}
