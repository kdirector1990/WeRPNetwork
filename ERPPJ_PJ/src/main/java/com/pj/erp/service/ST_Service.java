package com.pj.erp.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.SaleList;
import com.pj.erp.vo.ST.SalePlan;

public interface ST_Service {
	
	// ST_estimate 견적 등록
	public void estimatewritePro(HttpServletRequest req, Model model);
	
	// ST_estimate 검색
	public List<Estimate> getEstimate(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;	
	
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
	
	// ST_sale_plan (판매 계획 등록)
	public void salePlanWrite(HttpServletRequest req, Model model);
	
	// ST_sale_plan 상세 페이지 (수정 목록)
	public void salePlanWriteForm(HttpServletRequest req, Model model);
	
	// ST_sale_plan 수정 처리 페이지
	public void salePlanmodifyPro(HttpServletRequest req, Model model);
	
	// ST_sale_plan 삭제 처리 페이지
	public void salePlandeletePro(HttpServletRequest req, Model model);
	
	// ST_sale_plan 검색 기능
	public List<SalePlan> getsalePlan(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// ST_release 목록 페이지
	public void release(HttpServletRequest req, Model model);
	
	// ST_release 검색 기능
	public List<Release> getRelease(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// ST_release 상세 페이지
	public void releaseWriteForm(HttpServletRequest req, Model model);
	
	// ST_release 수정 처리 페이지
	public void releaseModifyPro(HttpServletRequest req, Model model);
	
	// ST_release 삭제 처리 페이지
	public void releaseDeletePro(HttpServletRequest req, Model model);
	
	// ST_release 재고 등록
	public void releaseWritePro(HttpServletRequest req, Model model);
	
	// ST_saleList 입력
	public void saleListWritePro(HttpServletRequest req, Model model);
	
	// ST_saleList 목록 조회
	public void saleList(HttpServletRequest req, Model model);
	
	// ST_saleList 검색 기능
	public List<SaleList> getsaleList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// ST_saleList 상세 페이지
	public void saleListWriteForm(HttpServletRequest req, Model model);
	
	// ST_saleList 상세 페이지 수정
	public void saleListModifyPro(HttpServletRequest req, Model model);
	
	// ST_saleList 상세 페이지 삭제
	public void saleListDeletePro(HttpServletRequest req, Model model);
	
	
	
	
	// Product 검색
	public void searchProduct(HttpServletRequest req, Model model);
	
	// Customer 검색
	public void searchCustomer(HttpServletRequest req, Model model);
	
	// 담당자 검색
	public void searchUsername(HttpServletRequest req, Model model);
	
	// Customer 검색
	public void searchCustomer2(HttpServletRequest req, Model model);
	
	
	// tables-datatable (거래 명세서) 목록
	public void transaction(HttpServletRequest req, Model model);
	
	// 매출 현황
	public void totalSales(HttpServletRequest req, Model model);

}
