package com.pj.erp.vo.HR;

public class HR_RankVO {
	
	//멤버변수
	String rank_code; //직급코드
	String rank_name; //직급명
	
	//디폴트 생성자
	public HR_RankVO() {}

	//getter, setter
	public String getRank_code() {
		return rank_code;
	}

	public void setRank_code(String rank_code) {
		this.rank_code = rank_code;
	}

	public String getRank_name() {
		return rank_name;
	}

	public void setRank_name(String rank_name) {
		this.rank_name = rank_name;
	}
	
	

}
