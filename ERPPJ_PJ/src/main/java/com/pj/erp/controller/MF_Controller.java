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
public class MF_Controller {

	@Autowired
	ERPService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MF_Controller.class);
	
	//자재등록
	@RequestMapping("MF_materialsInput")
	public String MF_materialsInput(Locale locale, Model model) {
		logger.info("log => MF_materialsInput");
		
		return "MF/MF_materialsInput";
	}
	//자재관리
	@RequestMapping("MF_materialsManagement")
	public String MF_materialsManagement(Locale locale, Model model) {
		logger.info("log => MF_materialsManagement");
		
		return "MF/MF_materialsManagement";
	}
}
