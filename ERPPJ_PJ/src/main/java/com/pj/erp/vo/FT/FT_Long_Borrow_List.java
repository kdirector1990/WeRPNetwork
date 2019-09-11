package com.pj.erp.vo.FT;

import java.sql.Date;

public class FT_Long_Borrow_List {
	
	String debt_l_code;
	String customer_code;
	String username;
	int debt_l_price;
	Date debt_l_date;
	Date debt_l_expriration;
	double debt_l_interest;
	
	public FT_Long_Borrow_List() {
	}

	public String getDebt_l_code() {
		return debt_l_code;
	}

	public void setDebt_l_code(String debt_l_code) {
		this.debt_l_code = debt_l_code;
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

	public int getDebt_l_price() {
		return debt_l_price;
	}

	public void setDebt_l_price(int debt_l_price) {
		this.debt_l_price = debt_l_price;
	}

	public Date getDebt_l_date() {
		return debt_l_date;
	}

	public void setDebt_l_date(Date debt_l_date) {
		this.debt_l_date = debt_l_date;
	}

	public Date getDebt_l_expriration() {
		return debt_l_expriration;
	}

	public void setDebt_l_expriration(Date debt_l_expriration) {
		this.debt_l_expriration = debt_l_expriration;
	}

	public double getDebt_l_interest() {
		return debt_l_interest;
	}

	public void setDebt_l_interest(double debt_l_interest) {
		this.debt_l_interest = debt_l_interest;
	}
	
	
	
	
}
