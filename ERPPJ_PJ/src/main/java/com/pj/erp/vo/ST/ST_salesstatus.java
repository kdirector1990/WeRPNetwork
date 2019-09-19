package com.pj.erp.vo.ST;

public class ST_salesstatus {
	private String customer_code;
	private String cudtomer_name;
	private int month;
	private int total_amount;
	private int total_price;
	private int count;
	
	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	public String getCudtomer_name() {
		return cudtomer_name;
	}
	public void setCudtomer_name(String cudtomer_name) {
		this.cudtomer_name = cudtomer_name;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
