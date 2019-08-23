package com.pj.erp.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pj.erp.service.CT_Service;
import com.pj.erp.service.ERPService;

@Controller
public class CT_Controller {

	@Autowired
	ERPService service;
	
	@Autowired
	CT_Service CT;
	
	private static final Logger logger = LoggerFactory.getLogger(CT_Controller.class);
	
	/* ==========================================================
	 * 전산팀 : Part 김지원
	 */
	
	//전산 설비 등록
	@RequestMapping("CT_equip_add")
	public String CT_equip_add(Locale locale, Model model) {
		logger.info("log => CT_equip_add");
		
		return "CT/CT_equip_add";
	}
	
	//전산 설비 관리
	@RequestMapping("CT_equip_manage")
	public String CT_equip_manage(Locale locale, Model model) {
		logger.info("log => CT_equip_manage");
		
		return "CT/CT_equip_manage";
	}
	
	//전산 설비 목록
	@RequestMapping("CT_equip_list")
	public String CT_equip_list(Locale locale, Model model) {
		logger.info("log => CT_equip_list");
		
		return "CT/CT_equip_list";
	}
	
	//수리 일자 등록
	@RequestMapping("CT_repair_list_add")
	public String CT_repair_list_add(Locale locale, Model model) {
		logger.info("log => CT_repair_list_add");
		
		return "CT/CT_repair_list_add";
	}
	
	//외부업체 수리 등록
	@RequestMapping("CT_ComInsertForm")
	public String CT_insertForm(Locale locale, Model model) {
		logger.info("log => CT_CominsertForm");
		
		return "CT/CT_ComInsertFrom";
	}
	
	//수리 현황
	@RequestMapping("CT_reqair_list")
	public String CT_reqair_list(Locale locale, Model model) {
		logger.info("log => CT_reqair_list");
		
		return "CT/CT_reqair_list";
	}
	
	//예산 현황
	@RequestMapping("CT_budget")
	public String CT_budget(Locale locale, Model model) {
		logger.info("log => CT_budget");
		
		return "CT/CT_budget";
	}
	
	//추가 예산 신청
	@RequestMapping("CT_budget_apply")
	public String CT_budget_apply(Locale locale, Model model) {
		logger.info("log => CT_budget_apply");
		
		return "CT/CT_budget_apply";
	}
	
	//AS 요청 현황
	@RequestMapping("CT_as_list")
	public String CT_as_list(Locale locale, Model model) {
		logger.info("log => CT_as_list");
		
		return "CT/CT_as_list";
	}
	
	//AS 요청 관리
	@RequestMapping("CT_as_manage")
	public String CT_as_manage(Locale locale, Model model) {
		logger.info("log => CT_as_manage");
		
		return "CT/CT_as_manage";
	}
	
	/*
	 * service 타는 지 확인
	 */
	
	//Insert확인
	@RequestMapping("CT_subject_add")
	public String CT_subject_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_subject_add");
		
		CT.CT_insert(req, model);
		
		return "CT/CT_equip_add";
	}
}
