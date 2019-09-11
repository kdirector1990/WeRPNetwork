package com.pj.erp.vo.FT;

import java.sql.Date;

public class FT_Bill_payment_VO {

	String bill_p_code;
	String customer_code;
	int payment_price;
	Date payment_date;
	Date payment_expriration;
	double payment_interest;
	
	
	public FT_Bill_payment_VO() {
	}


	public String getBill_p_code() {
		return bill_p_code;
	}


	public void setBill_p_code(String bill_p_code) {
		this.bill_p_code = bill_p_code;
	}


	public String getCustomer_code() {
		return customer_code;
	}


	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}


	public int getPayment_price() {
		return payment_price;
	}


	public void setPayment_price(int payment_price) {
		this.payment_price = payment_price;
	}


	public Date getPayment_date() {
		return payment_date;
	}


	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
	}


	public Date getPayment_expriration() {
		return payment_expriration;
	}


	public void setPayment_expriration(Date payment_expriration) {
		this.payment_expriration = payment_expriration;
	}


	public double getPayment_interest() {
		return payment_interest;
	}


	public void setPayment_interest(double payment_interest) {
		this.payment_interest = payment_interest;
	}
	
	
	
}