package com.pj.erp.vo.FT;

public class FT_Depreciation {
	private String code; // 코드
	private String name; // 이름
	private String baseCost; // 기초가액
	private String beforesum; // 전월감가누계액
	private String nowprice; // 당기상각액
	private String nowsum; // 감가상각누계액
	private String unprice; // 미상각액
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBaseCost() {
		return baseCost;
	}
	public void setBaseCost(String baseCost) {
		this.baseCost = baseCost;
	}
	public String getBeforesum() {
		return beforesum;
	}
	public void setBeforesum(String beforesum) {
		this.beforesum = beforesum;
	}
	public String getNowprice() {
		return nowprice;
	}
	public void setNowprice(String nowprice) {
		this.nowprice = nowprice;
	}
	public String getNowsum() {
		return nowsum;
	}
	public void setNowsum(String nowsum) {
		this.nowsum = nowsum;
	}
	public String getUnprice() {
		return unprice;
	}
	public void setUnprice(String unprice) {
		this.unprice = unprice;
	}
	
	
	
	
	
}
