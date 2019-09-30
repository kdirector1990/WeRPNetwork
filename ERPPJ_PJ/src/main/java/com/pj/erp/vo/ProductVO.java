package com.pj.erp.vo;

public class ProductVO {
	private String product_code;
	private String product_name;
	private String bom_code;
	private int price;
	
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getBom_code() {
		return bom_code;
	}
	public void setBom_code(String bom_code) {
		this.bom_code = bom_code;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
