package com.pj.erp.vo.MF;

public class MF_product_list {
	private String product_code;	//제품계정코드
	private String bom_code;		//BOM코드
	private String product_name;	//제품명
	
	public MF_product_list() {}

	public String getProduct_code() {
		return product_code;
	}

	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}

	public String getBom_code() {
		return bom_code;
	}

	public void setBom_code(String bom_code) {
		this.bom_code = bom_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	
}
