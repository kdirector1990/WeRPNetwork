package com.pj.erp.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.ST.Estimate;

import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.ST_contrast;
import com.pj.erp.vo.ST.ST_searchProductCode;
import com.pj.erp.vo.ST.ST_searchUsername;
import com.pj.erp.vo.ST.ST_searchCustomerCode;
import com.pj.erp.vo.ST.ST_searchDepartmentCode;
import com.pj.erp.vo.ST.SaleList;
import com.pj.erp.vo.ST.SalePlan;
import com.pj.erp.vo.ST.TransactionDetails;

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
	
	// ST_delay_state 지연 현황 검색 기능
	public List<SaleList> getDelay(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// ST_release 상세 페이지
	public void releaseWriteForm(HttpServletRequest req, Model model);
	
	// ST_refund 반품
	public List<Release> getrefund(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
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
	
	// ST_contrast_pp 검색 기능
	public List<ST_contrast> getcontrast (Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// 거래 명세서 검색 기능
	public List<TransactionDetails> getdate (Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	
	
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
	
	//매출 - 고객
	public List<ST_searchCustomerCode> searchCustomerCode(HttpServletRequest req, Model model);
	
	//매출 - 품명
	public List<ST_searchProductCode> searchProductCode(HttpServletRequest req, Model model);
	
	//매출 - 담당자
	public List<ST_searchUsername> searchUsernameCode(HttpServletRequest req, Model model);
	
	//매출 - 부서
	public List<ST_searchDepartmentCode> searchDepartmentCode(HttpServletRequest req, Model model);

	//부서조회 팝업창 검색
	public void searchDepCode(HttpServletRequest req, Model model);
	
	// 판매 대장 팝업창 검색
	public void searchSaleList(HttpServletRequest req, Model model);
	
}
