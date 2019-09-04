package com.pj.erp.persistence;

import java.util.Map;

public interface FT_DAO {
	
	//예산신청입력처리
	public int FT_applyinput();
	
	// 적금 key 가져오기
	public String FT_SavingsKeySelect();
	
	// 적금추가
	public int FT_SavingsPrevInsert(Map<String, Object> map);
	
	public int FT_SavingsInsert(Map<String, Object> map);
	
	// 적금수정
	public int FT_SavingsPrevUpdate(Map<String, Object> map);
	
	public int FT_SavingsUpdate(Map<String, Object> map);
	
	// 거래처 추가
	public int FT_AccInsert(Map<String, Object> map);
	
}
