package com.pj.erp.vo;

//자재관리
public class MF_VO {
	
	private String materials_code; //자재관리코드
	private String account_code;//계정코드
	private String materials_name;//자재명
	private String materials_unit;//단위
	
	public MF_VO() {}

	public String getMaterials_code() {
		return materials_code;
	}

	public void setMaterials_code(String materials_code) {
		this.materials_code = materials_code;
	}

	public String getAccount_code() {
		return account_code;
	}

	public void setAccount_code(String account_code) {
		this.account_code = account_code;
	}

	public String getMaterials_name() {
		return materials_name;
	}

	public void setMaterials_name(String materials_name) {
		this.materials_name = materials_name;
	}

	public String getMaterials_unit() {
		return materials_unit;
	}

	public void setMaterials_unit(String materials_unit) {
		this.materials_unit = materials_unit;
	}
	
	
}
