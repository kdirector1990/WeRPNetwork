package com.pj.erp.controller;

import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

import com.pj.erp.service.MS_Service;
import com.pj.erp.vo.MS.MS_plan;

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
	@RequestMapping(value="MS_insertPlanPro", method = RequestMethod.POST)
	@ResponseBody
	public int MS_insertPlan(MultipartHttpServletRequest req, Model model) {
		logger.info("log => MS_insertPlanPro");
		
		int insertCnt = service.insertPlan(req, model);
			 
		return insertCnt;
	}
	
	//기획서 조회
	@RequestMapping("MS_planInquiry")
	public String planInquiry(HttpServletRequest req, Model model) {
		logger.info("log => MS_planInquiry");
		
		return "MS/MS_planInquiry";
	}
	
	//사원이름으로 검색 결과
	@RequestMapping("MS_planInquiry_result")
	@ResponseBody
	public List<MS_plan> MS_planInquiry_result(HttpServletRequest req, Model model) {
		logger.info("log => MS_planInquiry_result");
		List<MS_plan> vo = service.selectPlan(req, model);
		
		return vo;
	}
	
	//기획서 상세 조회버튼
	@RequestMapping("MS_planDetail_result")
	public String MS_planDetail_result(HttpServletRequest req, Model model) {
		logger.info("log => MS_planDetail_result");
		service.selectPlanDetail(req, model);
		
		return "MS/MS_planDetail_result";
	}
	
	//기획서 관리 목록 가져오기
	@RequestMapping("MS_planManagement")
	public String planManagement(HttpServletRequest req, Model model) {
		logger.info("log => MS_planManagement");
		
		return "MS/MS_planManagement";
	}
	
	//기획서 수정 상세조회
	@RequestMapping("MS_planUpdateDelete")
	public String MS_planUpdateDelete(HttpServletRequest req, Model model) {
		logger.info("log => MS_planUpdateDelete");
		service.selectPlanDetail(req, model);
		
		return "MS/MS_planUpdateDelete";
	}
		
	//기획서 수정 처리
	@RequestMapping("MS_updatePlanPro")
	@ResponseBody
	public String MS_updatePlanPro(HttpServletRequest req, Model model) {
		logger.info("log => MS_updatePlanPro");
		service.updatePlan(req, model);
		
		return "MS/MS_planManagement";
	}
	
	//기획서 삭제 처리
	@RequestMapping("MS_deletePlanPro")
	@ResponseBody
	public String MS_deletePlanPro(HttpServletRequest req, Model model) {
		logger.info("log => MS_deletePlanPro");
		service.deletePlan(req, model);
		
		return "MS/MS_planManagement";
	}
	//기획서 등록 - username 검색창
	@RequestMapping("MS_searchUsername")
	public String MS_searchUsername(HttpServletRequest req, Model model) {
		logger.info("log => MS_searchUsername");
		
		return "MS/MS_searchUsername";
	}
	
	// 검색목록가져오기
	@RequestMapping("MS_searchUsername_result")
	public String MS_searchUsername_result(HttpServletRequest req, Model model) {
		logger.info("log => MS_searchUsername_result");
		service.searchUsername(req, model);
		
		return "MS/MS_searchUsername_result";
	}
	
	//등록 - 책임자 코드 검색 MS_positionCode
	@RequestMapping("MS_positionCode")
	public String MS_positionCode(HttpServletRequest req, Model model) {
		logger.info("log => MS_positionCode");
		
		return "MS/MS_positionCode";
	}
	
	//등록 - 책임자 코드 검색 MS_positionCode
	@RequestMapping("MS_positionCode_result")
	public String MS_positionCode_result(HttpServletRequest req, Model model) {
		logger.info("log => MS_positionCode_result");
		service.searchUsername(req, model);
		
		return "MS/MS_positionCode_result";
	}
	
}
