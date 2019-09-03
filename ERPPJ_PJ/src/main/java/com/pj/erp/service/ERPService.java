package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface ERPService {
	
	
	//경영지원 - 기획서 등록
	public void insertPlan(HttpServletRequest req, Model model);
	
	public void testreg(HttpServletRequest req, Model model);
}
