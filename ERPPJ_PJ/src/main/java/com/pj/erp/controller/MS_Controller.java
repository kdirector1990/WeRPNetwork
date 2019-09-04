package com.pj.erp.controller;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;

import com.pj.erp.service.MS_Service;

@Controller
public class MS_Controller {
	
	@Autowired
	MS_Service service;
	
	private static final Logger logger = LoggerFactory.getLogger(MS_Controller.class);
	
	// 기획서 등록 페이지
	@RequestMapping("MS_planEnrollment")
	public String planEnrollment(HttpServletRequest req, Model model) {
		logger.info("log => MS_planEnrollment");
		
		return "MS/MS_planEnrollment";
	}
	
	// 기획서 등록 처리
	@RequestMapping("MS_insertPlanPro")
	public String MS_insertPlan(HttpServletRequest req, Model model) {
		logger.info("log => MS_insertPlanPro");
		service.insertPlan(req, model);
		
		return "MS/MS_insertPlanPro";
	}
	
	//기획서 조회
	@RequestMapping("MS_planInquiry")
	public String planInquiry(HttpServletRequest req, Model model) {
		logger.info("log => MS_planInquiry");
		service.selectPlan(req, model);
		
		return "MS/MS_planInquiry";
	}
	
	//기획서 관리
	@RequestMapping("MS_planManagement")
	public String planManagement(HttpServletRequest req, Model model) {
		logger.info("log => MS_planManagement");
		service.selectPlan(req, model);
		
		return "MS/MS_planManagement";
	}
	/*
	//기획서 상세페이지
	@RequestMapping("MS_detailPlan")
	public String MS_detailPlan(HttpServletRequest req, Model model) {
		logger.info("log => MS_detailPlan");
		service.detailPlan(req, model);
		
		return "MS/MS_detailPlan";
	}
	*/
	//기획서 수정 처리
	@RequestMapping("MS_updatePlanPro")
	public String MS_updatePlanPro(HttpServletRequest req, Model model) {
		logger.info("log => MS_updatePlanPro");
		service.updatePlan(req, model);
		
		
		return "MS/MS_updatePlanPro";
	}
	
}
