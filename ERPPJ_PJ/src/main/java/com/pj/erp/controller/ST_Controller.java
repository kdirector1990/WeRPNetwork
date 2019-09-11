package com.pj.erp.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pj.erp.service.ST_Service;

@Controller
public class ST_Controller {

	@Autowired
	ST_Service service;
	
	private static final Logger logger = LoggerFactory.getLogger(ST_Controller.class);
	
	
	@RequestMapping("ST_index")
	public String index(Locale locale, Model model) {
		logger.info("log => index");
		
		return "index";
	}
	
	// 嫄곕옒 紐낆꽭�꽌 諛쒗뻾
	@RequestMapping("ST_tables-datatable")
	public String tablesdatatable(Locale locale, Model model) {
		logger.info("log => ST_tables-datatable");
		
		return "ST/tables-datatable";
	}
	
	// �꽭湲� 紐낆꽭�꽌 諛쒗뻾
	@RequestMapping("ST_tax-statements")
	public String taxstatements(Locale locale, Model model) {
		logger.info("log => ST_tax-statements");
		
		return "ST/tax-statements";
	}    
	
	// 견적 등록 (ST_estimate)
	@RequestMapping("ST_estimate")
	public String estimate(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate");
		
		return "ST/ST_estimate";
	}
	
	// 견적 등록 처리 페이지
	@RequestMapping("ST_estimate_writePro")
	public String ST_estimate_writePro(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate_writePro");
		service.estimatewritePro(req, model);
		
		return "ST/ST_estimate_writePro";
	}
	  
	// ST_release 출고 등록
	@RequestMapping("ST_release")
	public String ST_release(Locale locale, Model model) {
		logger.info("log => ST_release");
		
		return "ST/ST_release";
	}
	
	// ST_release 출고 관리
	@RequestMapping("ST_release_manage")
	public String ST_release_manage(HttpServletRequest req, Model model) {
		logger.info("log => ST_release_manage");
		service.release(req, model);
		
		return "ST/ST_release_manage";
	} 
	
	// ST_release 출고 등록
	@RequestMapping("ST_release_writePro")
	public String ST_release_writePro(HttpServletRequest req, Model model) {
		logger.info("log => ST_release_writePro");
		service.releaseWritePro(req, model);
		
		return "ST/ST_release_writePro";
	}
	
	// ST_release 출고 관리 상세 페이지
	@RequestMapping("ST_releaseDetail")
	public String ST_releaseDetail(HttpServletRequest req, Model model) {
		logger.info("log => ST_releaseDetail");
		service.releaseWriteForm(req, model);
		
		return "ST/ST_releaseDetail";
	} 
	 
	//  ST_release 출고 수정 페이지
	@RequestMapping("ST_release_modifyPro")
	public String ST_release_modifyPro(HttpServletRequest req, Model model) {
		logger.info("log => ST_release_modifyPro");
		service.releaseModifyPro(req, model);
		
		return "ST/ST_release_modifyPro";
	}
	 
	//  ST_release 출고 삭제 페이지
	@RequestMapping("ST_release_deletePro")
	public String ST_release_deletePro(HttpServletRequest req, Model model) {
		logger.info("log => ST_release_deletePro");
		service.releaseDeletePro(req, model);

		return "ST/ST_release_deletePro";
	}
	     
	// 諛섑뭹 愿�由� 
	@RequestMapping("ST_refund")
	public String refund(Locale locale, Model model) {
		logger.info("log => refund");
		
		return "ST/refund";  
	}
	
	// ST_sale_plan 판매 계획 등록 폼
	@RequestMapping("ST_sale_plan_write_reg")
	public String ST_sale_plan_write_reg(HttpServletRequest req, Model model) {
		logger.info("log => ST_sale_plan_write_reg");
		
		return "ST/ST_sale_plan_write_reg";
	}       
	
	
	// ST_sale_plan
	@RequestMapping("ST_sale_plan")
	public String ST_sale_plan(HttpServletRequest req, Model model) {
		logger.info("log => ST_sale_plan");
		service.salePlan(req, model);
		
		return "ST/ST_sale_plan";
	}       
	
	// ST_sale_plan 상세 정보
	@RequestMapping("ST_sale_plan_writeForm")
	public String ST_sale_plan_writeForm(HttpServletRequest req, Model model) {
		logger.info("log => ST_sale_plan_writeForm");
		service.salePlanWriteForm(req, model); 
		   
		return "ST/ST_sale_plan_writeForm";    
	}
	
	// ST_sale_Plan_modifyPro 수정 처리 페이지
	@RequestMapping("ST_sale_Plan_modifyPro")
	public String ST_sale_Plan_modifyPro(HttpServletRequest req, Model model) {
		logger.info("log => ST_sale_Plan_modifyPro");
		service.salePlanmodifyPro(req, model);
		    
		return "ST/ST_sale_Plan_modifyPro"; 
	}           
	
	// ST_sale_Plan_modifyPro 삭제 처리 페이지
	@RequestMapping("ST_sale_Plan_deletePro")
	public String ST_sale_Plan_deletePro(HttpServletRequest req, Model model) {
		logger.info("log => ST_sale_Plan_deletePro");
		service.salePlandeletePro(req, model);
		    
		return "ST/ST_sale_Plan_deletePro"; 
	}  
	
	// ST_saleList 판매 관리
	@RequestMapping("ST_saleList")
	public String ST_saleList(HttpServletRequest req, Model model) {
		logger.info("log => ST_saleList");
		    
		return "ST/ST_saleList"; 
	}
	
	// ST_saleList 판매 관리 상세 페이지
	@RequestMapping("ST_saleList_Form")
	public String ST_saleList_Form(HttpServletRequest req, Model model) {
		logger.info("log => ST_saleList_Form");
		    
		return "ST/ST_saleList_Form"; 
	}
	
	
	
	
	          
	@RequestMapping("ST_sale_plan_state2")
	public String ST_sale_plan_state2(Locale locale, Model model) {
		logger.info("log => ST_sale_plan_state2");
		
		return "ST/ST_sale_plan_state2";
	
	}	
	@RequestMapping("ST_sale_plan_state")
	public String ST_sale_plan_state(Locale locale, Model model) {
		logger.info("log => ST_sale_plan_state");
		
		return "ST/ST_sale_plan_state";
		
	}@RequestMapping("ST_contrast_pp")
	public String ST_contrast_pp(Locale locale, Model model) {
		logger.info("log => ST_contrast_pp");
		
		return "ST/ST_contrast_pp";
	}
	@RequestMapping("ST_contrast_pPro")
	public String ST_contrast_pPro(Locale locale, Model model) {
		logger.info("log => ST_contrast_pPro");
		
		return "ST/ST_contrast_pPro";
	}
	
	// 출고 지연 ST_delay_state (검색 부분)
	@RequestMapping("ST_delay_state")
	public String ST_delay_state(Locale locale, Model model) {
		logger.info("log => ST_delay_state");
		
		return "ST/ST_delay_state";
	}
	
	// 출고 지연 결과 (표)
	@RequestMapping("ST_delay_state_result")
	public String ST_delay_state_result(Locale locale, Model model) {
		logger.info("log => ST_delay_state_result");
		
		return "ST/ST_delay_state_result";
	}
	
	@RequestMapping("ST_tex_invoice_list")
	public String ST_tex_invoice_list(Locale locale, Model model) {
		logger.info("log => ST_tex_invoice_list");
		
		return "ST/ST_tex_invoice_list";
	}
	
	// 견적 현황
	@RequestMapping("ST_estimate_price")
	public String tablesresponsive(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate_price");
		service.estimateTBL(req, model);
		
		return "ST/ST_estimate_price";
	}
	
	// 견적 현황 상세 페이지
	@RequestMapping("ST_estimate_Form")
	public String ST_estimate_Form(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate_Form");
		service.estimateForm(req, model);
		
		return "ST/ST_estimate_Form";
	}
	
	// 견적 현황 상세 수정 처리 페이지
	@RequestMapping("ST_estimate_modifyPro")
	public String ST_estimate_modifyPro(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate_modifyPro");
		service.estimatemodifyPro(req, model);
		
		return "ST/ST_estimate_modifyPro";
	}
	
	// 견적 현황 상세 삭제 처리 페이지
	@RequestMapping("ST_estimate_deletePro")
	public String ST_estimate_deletePro(HttpServletRequest req, Model model) {
		logger.info("log => ST_estimate_deletePro");
		service.estimatedeletePro(req, model);
		
		return "ST/ST_estimate_deletePro";
	}
	
	
	@RequestMapping("ST_salesStatus")
	public String salesStatus(Locale locale, Model model) {
		logger.info("log => salesStatus");
		
		return "ST/ST_salesStatus";
	}
	
	@RequestMapping("ST_salesTotal")
	public String ST_salesTotal(Locale locale, Model model) {
		logger.info("log => ST_salesTotal");
		
		return "ST/ST_salesTotal";
	}
	
	@RequestMapping("ST_salesTotal2")
	public String ST_salesTotal2(Locale locale, Model model) {
		logger.info("log => ST_salesTotal2");
		
		return "ST/ST_salesTotal2";
	}
	 
	@RequestMapping("ST_unpaidOrders")
	public String ST_unpaidOrders(Locale locale, Model model) {
		logger.info("log => ST_unpaidOrders");
		
		return "ST/ST_unpaidOrders";
	} 
	
	// ProductName 검색
	@RequestMapping("ST_searchProductname")
	public String ST_searchProductname(HttpServletRequest req, Model model) {
		logger.info("log => ST_searchProductname");
		
		return "ST/ST_searchProductname";
	}
	
	// ProductName 검색 결과
	@RequestMapping("ST_searchProductname_result")
	public String ST_searchProductname_result(HttpServletRequest req, Model model) {
		logger.info("log => ST_searchProductname_result");
		service.searchProduct(req, model);
		
		return "ST/ST_searchProductname_result";
	}
		
	
}
