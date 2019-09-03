package com.pj.erp.persistence;

import java.util.Map;

public interface FT_DAO {
	
	//예산신청입력처리
	public int FT_applyinput();
	
	public int FT_AccInsert(Map<String, Object> map);
	
}
