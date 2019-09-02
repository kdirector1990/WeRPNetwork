package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

// 경영지원 
public interface MS_Service {

	//경영지원 - 기획서 등록
	public void insertPlan(HttpServletRequest req, Model model);
}
