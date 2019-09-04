package com.pj.erp.service;

import org.springframework.ui.Model;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FT_Service {
	
	// 거래처 추가
	public int FT_ACCInsert(Map<String, Object> map);
	
	// 적금 가져오기
	public void FT_SavingsSelect(HttpServletRequest req, Model model);
	
	// 적금추가
	public String FT_SavingsInsert(Map<String, Object> map);
	
	// 적금수정
	public String FT_SavingsUpdate(Map<String, Object> map);
	
	//예산신청입력처리
	public void FT_applyinput(HttpServletRequest req, Model model);
}
