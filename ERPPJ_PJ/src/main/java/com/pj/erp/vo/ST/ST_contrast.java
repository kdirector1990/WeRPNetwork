package com.pj.erp.vo.ST;

import java.sql.Date;

public class ST_contrast {
	
	private String product_name;	// 품명
	private String product_code;	// 품번
	private int amount;	// 수량
	private int ef_amount;	// 계획 수량
	private int price;	//  출고 금액
	private String e_name;	// 담당자
	private int mon;	// 월
	private String customer_name;	// 거래처명
	private String sale_pname;
	private String sale_code;
	private int sale_amount;
	private int plan_amount;
	private String sale_name;
	private String sale_date;
	
	
	
	public ST_contrast() {}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public String getProduct_code() {
		return product_code;
	}


	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}



	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getEf_amount() {
		return ef_amount;
	}


	public void setEf_amount(int ef_amount) {
		this.ef_amount = ef_amount;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getE_name() {
		return e_name;
	}


	public void setE_name(String e_name) {
		this.e_name = e_name;
	}


	public int getMon() {
		return mon;
	}


	public void setMon(int mon) {
		this.mon = mon;
	}


	public String getCustomer_name() {
		return customer_name;
	}


	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}


	public String getSale_pname() {
		return sale_pname;
	}


	public void setSale_pname(String sale_pname) {
		this.sale_pname = sale_pname;
	}


	public String getSale_code() {
		return sale_code;
	}


	public void setSale_code(String sale_code) {
		this.sale_code = sale_code;
	}


	public int getSale_amount() {
		return sale_amount;
	}


	public void setSale_amount(int sale_amount) {
		this.sale_amount = sale_amount;
	}


	public int getPlan_amount() {
		return plan_amount;
	}


	public void setPlan_amount(int plan_amount) {
		this.plan_amount = plan_amount;
	}


	public String getSale_name() {
		return sale_name;
	}


	public void setSale_name(String sale_name) {
		this.sale_name = sale_name;
	}


	public String getSale_date() {
		return sale_date;
	}


	public void setSale_date(String sale_date) {
		this.sale_date = sale_date;
	}

	
	

}
