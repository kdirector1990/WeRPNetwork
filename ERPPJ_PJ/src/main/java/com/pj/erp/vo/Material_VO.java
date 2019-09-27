package com.pj.erp.vo;

public class Material_VO {

	//멤버변수
	String m_io_code;		//자재입출코드
	String material_code;	//자재관리코드
	String m_io_regdate;	//등록일
	int m_price;			//단가
	int m_amount;			//수량
	String m_type;			//구분
	String m_note;			//비고
	String eas_code;		//전결라인코드
	String e_approval_code;	//전결현황코드
	String material_name;	//자재명
	String material_unit;	//자재구분
	
	//생성자
	public void Material_VO() {}

	//getter,setter
	public String getM_io_code() {
		return m_io_code;
	}

	public void setM_io_code(String m_io_code) {
		this.m_io_code = m_io_code;
	}

	public String getMaterial_code() {
		return material_code;
	}

	public void setMaterial_code(String material_code) {
		this.material_code = material_code;
	}

	public String getM_io_regdate() {
		return m_io_regdate;
	}

	public void setM_io_regdate(String m_io_regdate) {
		this.m_io_regdate = m_io_regdate;
	}

	public int getM_price() {
		return m_price;
	}

	public void setM_price(int m_price) {
		this.m_price = m_price;
	}

	public int getM_amount() {
		return m_amount;
	}

	public void setM_amount(int m_amount) {
		this.m_amount = m_amount;
	}

	public String getM_type() {
		return m_type;
	}

	public void setM_type(String m_type) {
		this.m_type = m_type;
	}

	public String getM_note() {
		return m_note;
	}

	public void setM_note(String m_note) {
		this.m_note = m_note;
	}

	public String getEas_code() {
		return eas_code;
	}

	public void setEas_code(String eas_code) {
		this.eas_code = eas_code;
	}

	public String getE_approval_code() {
		return e_approval_code;
	}

	public void setE_approval_code(String e_approval_code) {
		this.e_approval_code = e_approval_code;
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
