package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FT_Service {
	
	//예산신청입력처리
	public void FT_applyinput(HttpServletRequest req, Model model);
	
}
