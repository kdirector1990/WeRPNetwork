package com.pj.erp.service;

import org.springframework.ui.Model;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FT_Service {
	// 분개입력
	public void FT_ACCInsert(Map<String, Object> map);
	
	//예산신청입력처리
	public void FT_applyinput(HttpServletRequest req, Model model);
}
