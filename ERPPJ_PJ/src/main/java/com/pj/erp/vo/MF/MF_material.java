package com.pj.erp.vo.MF;

//자재관리
public class MF_material {
	
	private String materials_code; //계정코드
	private String materials_name;//자재명
	private String materials_unit;//단위
	
	public MF_material() {}

	public String getMaterials_code() {
		return materials_code;
	}

	public void setMaterials_code(String materials_code) {
		this.materials_code = materials_code;
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
