package com.pj.erp.vo.MF;

//자재관리
public class MF_material {
	
	private String accounts_code;	//계정코드
	private String detail_ac_code;	//자재관리코드2
	private String account_name; //계정명
	private String di_table;	//상세정보테이블명
	
	private String material_code; //자재관리코드1
	private String material_name;//자재명
	private String material_unit;//단위]
	
	public MF_material() {}

	public String getMaterial_code() {
		return material_code;
	}

	public void setMaterial_code(String material_code) {
		this.material_code = material_code;
	}

	public String getMaterial_name() {
		return material_name;
	}

	public void setMaterial_name(String material_name) {
		this.material_name = material_name;
	}

	public String getMaterial_unit() {
		return material_unit;
	}

	public void setMaterial_unit(String material_unit) {
		this.material_unit = material_unit;
	}

	public String getAccounts_code() {
		return accounts_code;
	}

	public void setAccounts_code(String accounts_code) {
		this.accounts_code = accounts_code;
	}

	public String getDetail_ac_code() {
		return detail_ac_code;
	}

	public void setDetail_ac_code(String detail_ac_code) {
		this.detail_ac_code = detail_ac_code;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}

	public String getDi_table() {
		return di_table;
	}

	public void setDi_table(String di_table) {
		this.di_table = di_table;
	}

}
