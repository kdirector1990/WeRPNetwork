package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface STService {
	
	// 글 목록 (견적 관리)
	public void estimateTBL(HttpServletRequest req, Model model);
	
	// ST_sale_plan (판매 계획) 목록
	public void salePlan(HttpServletRequest req, Model model);
	
	// tables-datatable (거래 명세서) 목록
	public void transaction(HttpServletRequest req, Model model);
	
	// 매출 현황
	public void totalSales(HttpServletRequest req, Model model);

}
