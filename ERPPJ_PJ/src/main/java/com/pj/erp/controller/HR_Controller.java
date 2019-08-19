package com.pj.erp.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pj.erp.service.ERPService;

@Controller
public class HR_Controller {

	@Autowired
	ERPService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HR_Controller.class);
	
	
	@RequestMapping("HR_InputHR")
	public String HR_InputHR(Locale locale, Model model) {
		logger.info("log => HR_InputHR");
		
		return "HR/HR_InputHR_ex";
	}
	
	@RequestMapping("joinPro")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("url == > joinPro");
		service.inputHRPro(req, model);
		return "index";
	}
	
	@RequestMapping("HR_EmployeeInformation")
	public String HR_EmployeeInformation(Locale locale, Model model) {
		logger.info("log => HR_EmployeeInformation");
		
		return "HR/HR_EmployeeInformation";
	}
	
	@RequestMapping("HR_EmployeeSalary")
	public String HR_EmployeeSalary(Locale locale, Model model) {
		logger.info("log => HR_EmployeeSalary");
		
		return "HR/HR_EmployeeSalary";
	}
	
	@RequestMapping("HR_GreetingPunishment")
	public String HR_GreetingPunishment(Locale locale, Model model) {
		logger.info("log => HR_GreetingPunishment");
		
		return "HR/HR_GreetingPunishment";
	}
	
	@RequestMapping("HR_Yearsofservice")
	public String HR_Yearsofservice(Locale locale, Model model) {
		logger.info("log => HR_Yearsofservice");
		
		return "HR/HR_Yearsofservice";
	}
	
	@RequestMapping("HR_LeaveStandard")
	public String HR_LeaveStandard(Locale locale, Model model) {
		logger.info("log => HR_LeaveStandard");
		
		return "HR/HR_LeaveStandard";
	}
	
	@RequestMapping("HR_Greeting")
	public String HR_Greeting(Locale locale, Model model) {
		logger.info("log => HR_Greeting");
		
		return "HR/HR_Greeting";
	}
	
	@RequestMapping("HR_appointment_notice")
	public String HT_appointment_notice(Locale locale, Model model) {
		logger.info("log => HR_appointment_notice");
		
		return "HR/HR_appointment_notice";
	}
	
	@RequestMapping("HR_appointment_report")
	public String HR_appointment_report(Locale locale, Model model) {
		logger.info("log => HR_appointment_report");
		
		return "HR/HR_appointment_report";
	}
	
	@RequestMapping("HR_work_record")
	public String HR_work_record(Locale locale, Model model) {
		logger.info("log => HR_work_record");
		
		return "HR/HR_work_record";
	}
	
	@RequestMapping("coming_soon")
	public String coming_soon(Locale locale, Model model) {
		logger.info("log => coming_soon");
		
		return "HR/coming_soon";
	}
	
}
