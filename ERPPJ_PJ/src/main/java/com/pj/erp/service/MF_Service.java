package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MF_Service {
	
	// 자재등록
	public void insertMF(HttpServletRequest req, Model model);
	
}
