package com.pj.erp.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pj.erp.service.MF_Service;

@Controller
public class MF_Controller {

	@Autowired
	MF_Service service;
	
	private static final Logger logger = LoggerFactory.getLogger(MF_Controller.class);
	
	//자재등록
	@RequestMapping("MF_materialsInput")
	public String MF_materialsInput(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialsInput");
		
		return "MF/MF_materialsInput";
	}
	
	//자재등록처리
	@RequestMapping("MF_materialsInputPro")
	public String MF_materialsInsertPro(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialsInput");
		service.insertMF(req, model);
		
		return "MF/MF_materialsInput";
	}
	
	//자재목록 가져오기
	@RequestMapping("MF_materialsManagement")
	public String MF_materialsManagement(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialsManagement");
		service.selectMF(req, model);
		
		return "MF/MF_materialsManagement";
	}
	
	//자재 수정처리
	@RequestMapping("MF_materialUpdate")
	public String MF_materialUpdate(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialUpdate");
		service.updateMF(req, model);
		
		return "MF/MF_materialsManagement";
	}
	
	//자재 삭제 처리
	@RequestMapping("MF_materialDelete")
	public String MF_materialDelete(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialDelete");
		service.deleteMF(req, model);
		
		return "MF/MF_materialsManagement";
	}
	//생산계획 등록
	@RequestMapping("MF_production_plan_enrollment")
	public String MF_production_plan_enrollment(HttpServletRequest req, Model model) {
		logger.info("log => MF_production_plan_enrollment");
		
		return "MF/MF_production_plan_enrollment";
	}
	
	// 생산계획등록처리
	@RequestMapping("MF_production_plan_enrollmentPro")
	public String MF_production_plan_enrollmentPro(HttpServletRequest req, Model model) {
		logger.info("log => MF_production_plan_enrollmentPro");
		service.insertMFPlan(req, model);
		
		return "MF/MF_production_plan_enrollment";
	}
	
	//생산계획 목록
	@RequestMapping("MF_production_plan_management")
	public String MF_production_plan_management(HttpServletRequest req, Model model) {
		logger.info("log => MF_production_plan_management");
		service.getMFplanList(req, model);
		
		return "MF/MF_production_plan_management";
	}
	
	//생산계획 수정
	@RequestMapping("MF_updateProductionPlanPro")
	public String MF_updateProductionPlanPro(HttpServletRequest req, Model model) {
		logger.info("log => MF_updateProductionPlanPro");
		service.updateMFplan(req, model);
		
		return "MF/MF_production_plan_management";
	}
	
	//생산계획삭제
	@RequestMapping("MF_deleteProductionPlanPro")
	public String MF_deleteProductionPlanPro(HttpServletRequest req, Model model) {
		logger.info("log => MF_deleteProductionPlanPro");
		service.deleteMFplan(req, model);
		
		return "MF/MF_production_plan_management";
	}
	
	//제품계정 code search
	@RequestMapping("MF_searchProCode")
	public String MF_searchProCode(HttpServletRequest req, Model model) {
		logger.info("log => MF_searchProCode");
		
		return "MF/MF_searchProCode";
	}
	
	//제품계정 code search
	@RequestMapping("MF_searchProCode_result")
	public String MF_searchProCode_result(HttpServletRequest req, Model model) {
		logger.info("log => MF_searchProCode_result");
		service.searchProName(req, model);
		
		return "MF/MF_searchProCode_result";
	}
	
}
