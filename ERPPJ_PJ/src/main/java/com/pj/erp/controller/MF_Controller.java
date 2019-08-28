package com.pj.erp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.pj.erp.service.ERPService;

@Controller
public class MF_Controller {

	@Autowired
	ERPService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MF_Controller.class);
	
	
}
