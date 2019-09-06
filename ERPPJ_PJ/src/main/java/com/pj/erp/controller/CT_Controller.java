package com.pj.erp.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pj.erp.service.CT_Service;
import com.pj.erp.service.ERPService;
import com.pj.erp.vo.CT.CT_VO;

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
	public String CT_equip_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_equip_add");
		
		return "CT/CT_equip_add";
	}
	
	//Insert확인
	@RequestMapping("CT_subject_add")
	@ResponseBody
	public int CT_subject_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_subject_add");
		
		int insertCnt = CT.CT_insert(req, model);
		
		return insertCnt;
	}
	
	//전산 설비 관리
	  @RequestMapping("CT_equip_manage") 
	  public String CT_equip_manage2(HttpServletRequest req, Model model) {
		  logger.info("log => CT_equip_manage"); 
	 
		  return "CT/CT_equip_manage3"; 
	 }
	 
	
	/*
	  @RequestMapping("CT_select_type")
	  @ResponseBody 
	  public List<CT_VO> CT_select_type(HttpServletRequest req, Model model) { 
		  logger.info("log => CT_select_type"); 
		  List<CT_VO> vo = CT.CT_select_A(req, model);
	  
		  return vo; 
	  }
	 */
	
	@RequestMapping("CT_select_type2")
	public String CT_select_type2(HttpServletRequest req, Model model) {
		logger.info("log => CT_select_type");
		CT.CT_select(req, model);
		
		return "CT/CT_Test";
	}
	
	//전산 설비 목록
	@RequestMapping("CT_equip_list")
	public String CT_equip_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_equip_list");
		
		return "CT/CT_equip_list";
	}
	
	//수리 일자 등록
	@RequestMapping("CT_repair_list_add")
	public String CT_repair_list_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_repair_list_add");
		
		return "CT/CT_repair_list_add";
	}
	
	//외부업체 수리 등록
	@RequestMapping("CT_ComInsertForm")
	public String CT_insertForm(HttpServletRequest req, Model model) {
		logger.info("log => CT_CominsertForm");
		
		return "CT/CT_ComInsertFrom";
	}
	
	//수리 현황
	@RequestMapping("CT_reqair_list")
	public String CT_reqair_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_reqair_list");
		
		return "CT/CT_reqair_list";
	}
	
	//예산 현황
	@RequestMapping("CT_budget")
	public String CT_budget(HttpServletRequest req, Model model) {
		logger.info("log => CT_budget");
		
		return "CT/CT_budget";
	}
	
	//추가 예산 신청
	@RequestMapping("CT_budget_apply")
	public String CT_budget_apply(HttpServletRequest req, Model model) {
		logger.info("log => CT_budget_apply");
		
		return "CT/CT_budget_apply";
	}
	
	//AS 요청 현황
	@RequestMapping("CT_as_list")
	public String CT_as_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_as_list");
		
		return "CT/CT_as_list";
	}
	
	//AS 요청 관리
	@RequestMapping("CT_as_manage")
	public String CT_as_manage(HttpServletRequest req, Model model) {
		logger.info("log => CT_as_manage");
		
		return "CT/CT_as_manage";
	}
	
	
}
