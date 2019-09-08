package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface ST_Service {
	
	// ST_estimate 견적 등록
	public void estimatewritePro(HttpServletRequest req, Model model);
	
	// 글 목록 (견적 관리)
	public void estimateTBL(HttpServletRequest req, Model model);
	
	// 견적 현황 (ST_estimate_Form) 상세 페이지
	public void estimateForm(HttpServletRequest req, Model model);
	
	// 견적 현황 (ST_estimate_form) 수정 처리 페이지
	public void estimatemodifyPro(HttpServletRequest req, Model model);
	
	// 견적 현황  (ST_estimate_form) 삭제 처리 페이지
	public void estimatedeletePro(HttpServletRequest req, Model model);
	
	// ST_sale_plan (판매 계획) 목록
	public void salePlan(HttpServletRequest req, Model model);
	
	// ST_sale_plan 상세 페이지 (수정 목록)
	public void salePlanWriteForm(HttpServletRequest req, Model model);
	
	// ST_sale_plan 수정 처리 페이지
	public void salePlanmodifyPro(HttpServletRequest req, Model model);
	
	// ST_sale_plan 삭제 처리 페이지
	public void salePlandeletePro(HttpServletRequest req, Model model);
	
	// ST_release 목록 페이지
	public void release(HttpServletRequest req, Model model);
	
	// tables-datatable (거래 명세서) 목록
	public void transaction(HttpServletRequest req, Model model);
	
	// 매출 현황
	public void totalSales(HttpServletRequest req, Model model);

}
