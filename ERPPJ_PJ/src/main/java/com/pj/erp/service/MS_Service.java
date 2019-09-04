package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

// 경영지원 
public interface MS_Service {

	//기획서 등록
	public void insertPlan(HttpServletRequest req, Model model);
	
	//기획서 조회
	public void selectPlan(HttpServletRequest req, Model model);
	
	//기획서 수정
	public void updatePlan(HttpServletRequest req, Model model);
	
	//기획서 상세
	public void detailPlan(HttpServletRequest req, Model model);
}
