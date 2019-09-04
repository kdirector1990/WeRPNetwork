package com.pj.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import org.springframework.web.bind.annotation.ResponseBody;


import com.pj.erp.service.HR_Service;
import com.pj.erp.vo.HR_PaystepVO;

@Controller
public class HR_Controller {

	@Autowired
	HR_Service service;
	
	private static final Logger logger = LoggerFactory.getLogger(HR_Controller.class);
	
	
	@RequestMapping("HR_InputHR")
	public String HR_InputHR(HttpServletRequest req, Model model) {
		logger.info("log => HR_InputHR");
		
		 
		return "HR/HR_InputHR";
	}
	

	@RequestMapping("HR_inputFoundation")
	public String inputFoundation(HttpServletRequest req, Model model) {
		logger.info("log => HR_inputFoundation");
		service.inputFoundation(req, model);
		return "index";
		
	}	
	
	@RequestMapping("inputPhysical")
	public String HR_inputPhysical(HttpServletRequest req, Model model) {
		logger.info("log => HR_inputPhysicalPro");
		
		return "HR/HR_InputHR";
	}
	
	@RequestMapping("HR_inputProHR3")
	public String HR_inputProHR3(HttpServletRequest req, Model model) {
		logger.info("log => HR_inputProHR3");
		
		return "HR/HR_InputHR";
	}
	
	/*@RequestMapping("joinPro")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("url == > joinPro");
		service.inputHRPro(req, model);
		return "index";
	}*/
	
	@RequestMapping("HR_EmployeeInformation")
	public String HR_EmployeeInformation(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeeInformation");
		
		return "HR/HR_EmployeeInformation";
	}
	
	@RequestMapping("HR_EmployeeSalary")
	public String HR_EmployeeSalary(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeeSalary");
		
		return "HR/HR_EmployeeSalary";
	}
	
	@RequestMapping("HR_GreetingPunishment")
	public String HR_GreetingPunishment(HttpServletRequest req, Model model) {
		logger.info("log => HR_GreetingPunishment");
		
		return "HR/HR_GreetingPunishment";
	}
	
	@RequestMapping("HR_GreetingPunishment_result")
	public String HR_GreetingPunishment_result(HttpServletRequest req, Model model) {
		logger.info("log => HR_GreetingPunishment_result");
		
		return "HR/HR_GreetingPunishment_result";
	}	
	
	@RequestMapping("HR_Yearsofservice")
	public String HR_Yearsofservice(HttpServletRequest req, Model model) {
		logger.info("log => HR_Yearsofservice");
		
		return "HR/HR_Yearsofservice";
	}
	
	@RequestMapping("HR_LeaveStandard")
	public String HR_LeaveStandard(HttpServletRequest req, Model model) {
		logger.info("log => HR_LeaveStandard");
		
		return "HR/HR_LeaveStandard";
	}
	
	@RequestMapping("HR_Greeting")
	public String HR_Greeting(HttpServletRequest req, Model model) {
		logger.info("log => HR_Greeting");
		
		return "HR/HR_Greeting";
	}
	
	@RequestMapping("HR_appointment_notice")
	public String HT_appointment_notice(HttpServletRequest req, Model model) {
		logger.info("log => HR_appointment_notice");
		
		return "HR/HR_appointment_notice";
	}
	
	@RequestMapping("HR_appointment_report")
	public String HR_appointment_report(HttpServletRequest req, Model model) {
		logger.info("log => HR_appointment_report");
		
		return "HR/HR_appointment_report";
	}
	
	@RequestMapping("HR_work_record")
	public String HR_work_record(HttpServletRequest req, Model model) {
		logger.info("log => HR_work_record");
		
		return "HR/HR_work_record";
	}
	
	//호봉테이블(직급)
	@RequestMapping("HR_GoodPay")
	public String HR_GoodPay(HttpServletRequest req, Model model) {
		logger.info("log => HR_GoodPay");
		
		service.selectRank(req, model);
		
		return "HR/HR_GoodPay";
	}
	
	//호봉테이블(호봉)
	@RequestMapping("HR_GoodPay_paystep")
	@ResponseBody
	public List<HR_PaystepVO> HR_GoodPay_paystep(HttpServletRequest req, Model model) {
		logger.info("log => HR_GoodPay_paystep");
		
		List<HR_PaystepVO> vo = service.selectMoney(req, model);
		System.out.println(vo.get(0).getBASE_PAYMENT());
		
		return vo;
	}
	
	//호봉테이블(호봉 수정)
	@RequestMapping("HR_GoodPay_payUpdate")
	@ResponseBody
	public String HR_GoodPay_payUpdate(HttpServletRequest req, Model model) {
		logger.info("log => HR_GoodPay_payUpdate");
		service.updateMoney(req, model);
		return "HR/HR_HrSalaryEnvironment";
	}
	
	@RequestMapping("HR_HrSalaryEnvironment")
	public String HR_HrSalaryEnvironment(HttpServletRequest req, Model model) {
		logger.info("log => HR_HrSalaryEnvironment");
		
		return "HR/HR_HrSalaryEnvironment";
	}
	
	@RequestMapping("HR_PersonnelBasicCode")
	public String HR_PersonnelBasicCode(HttpServletRequest req, Model model) {
		logger.info("log => HR_PersonnelBasicCode");
		
		return "HR/HR_PersonnelBasicCode";
	}
	
	@RequestMapping("coming_soon")
	public String coming_soon(HttpServletRequest req, Model model) {
		logger.info("log => coming_soon");
		
		return "HR/coming_soon";
	}
	
	@RequestMapping("HR_InputDepartment")
	public String InputDepartment(HttpServletRequest req, Model model) {
		logger.info("log => InputDepartment");				
		
		return "HR/HR_InputDepartment"; 
	}
	
	@RequestMapping("HR_inputDepartmentPro") 
	public String inputDepartmentPro(HttpServletRequest req, Model model) {
		logger.info("log => inputDepartmentPro");
		
		service.inputDepartmentPro(req, model);
		
		return "index"; 
	}
	
	/*
	 * @RequestMapping("HR_InputHRex")
	public String HR_InputHRex(HttpServletRequest req, Model model) {
		logger.info("log => HR_InputHR");
		
		service.inputHRPro(req, model); 
		return "HR/HR_InputHR_ex";
	}
	 */
}
