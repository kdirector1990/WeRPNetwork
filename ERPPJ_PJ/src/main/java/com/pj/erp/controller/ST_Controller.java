package com.pj.erp.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pj.erp.service.ERPService;

@Controller
public class ST_Controller {

	@Autowired
	ERPService service;
	
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
	
	// 寃ъ쟻 愿�由�
	@RequestMapping("ST_estimate")
	public String estimate(Locale locale, Model model) {
		logger.info("log => estimate");
		
		return "ST/estimate";
	}
	
	// 異쒓퀬 愿�由�
	@RequestMapping("ST_release")
	public String release(Locale locale, Model model) {
		logger.info("log => release");
		
		return "ST/release";
	}
	
	// 諛섑뭹 愿�由�
	@RequestMapping("ST_refund")
	public String refund(Locale locale, Model model) {
		logger.info("log => refund");
		
		return "ST/refund";
	}
	
	@RequestMapping("ST_sale_plan")
	public String ST_sale_plan(Locale locale, Model model) {
		logger.info("log => ST_sale_plan");
		
		return "ST/ST_sale_plan";
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
	
	@RequestMapping("ST_delay_state")
	public String ST_delay_state(Locale locale, Model model) {
		logger.info("log => ST_delay_state");
		
		return "ST/ST_delay_state";
	}
	
	@RequestMapping("ST_tex_invoice_list")
	public String ST_tex_invoice_list(Locale locale, Model model) {
		logger.info("log => ST_tex_invoice_list");
		
		return "ST/ST_tex_invoice_list";
	}
	
	// 寃ъ쟻 �쁽�솴
	@RequestMapping("ST_tables-responsive")
	public String tablesresponsive(Locale locale, Model model) {
		logger.info("log => tables-responsive");
		
		return "ST/tables-responsive";
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
		
	
}
