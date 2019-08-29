package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HR_Service {

	public void inputHRPro(HttpServletRequest req, Model model);
	
	//호봉테이블 직급메서드
	public void selectRank(HttpServletRequest req, Model model);
}
