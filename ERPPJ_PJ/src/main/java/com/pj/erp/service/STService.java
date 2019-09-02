package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface STService {
	
	// 글 목록
	public void estimateTBL(HttpServletRequest req, Model model);
	
	// 글 쓰기 처리
	public void estimateWrite(HttpServletRequest req, Model model);
	

	// ST_sale_plan 목록
	public void salePlan(HttpServletRequest req, Model model);
	
	// ST_sale_plan 글 쓰기
	public void salePlanWrite(HttpServletRequest req, Model model);
	
	
	// 매출현황
	public void totalSales(HttpServletRequest req, Model model);

}
