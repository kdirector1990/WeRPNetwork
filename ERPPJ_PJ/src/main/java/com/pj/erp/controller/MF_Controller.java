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
	@RequestMapping("MF_materialsInsertPro")
	public String MF_materialsInsertPro(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialsInsertPro");
		//service.insertMF(req, model);
		
		return "MF/MF_materialsInsertPro";
	}
	
	//자재관리
	@RequestMapping("MF_materialsManagement")
	public String MF_materialsManagement(HttpServletRequest req, Model model) {
		logger.info("log => MF_materialsManagement");
		service.selectMF(req, model);
		
		return "MF/MF_materialsManagement";
	}
}
