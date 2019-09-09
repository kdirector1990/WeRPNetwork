package com.pj.erp.vo.MF;

//자재관리
public class MF_material {
	
	private String material_code; //계정코드
	private String material_name;//자재명
	private String material_unit;//단위
	
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

}
