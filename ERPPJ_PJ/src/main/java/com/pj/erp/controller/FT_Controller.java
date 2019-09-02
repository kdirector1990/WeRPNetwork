package com.pj.erp.controller;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pj.erp.service.ERPService;

@Controller
public class FT_Controller {

	@Autowired
	ERPService service;
	
	private static final Logger logger = LoggerFactory.getLogger(CT_Controller.class);
	
	
	@RequestMapping("FT_journal")
	public String journal(Locale locale, Model model) {
		logger.info("log => FT_journal");
		
		return "FT/FT_journal";
	}
	@RequestMapping("FT_ledger")
	public String ledger(Locale locale, Model model) {
		logger.info("log => FT_ledger");
		
		return "FT/FT_ledger";
	}
	@RequestMapping("FT_insertChit")
	public String insertChit(Locale locale, Model model) {
		logger.info("log => FT_insertChit");
		
		return "FT/FT_insertChit";
	}
	@RequestMapping("FT_insertTotal")
	public String insertTotal(Locale locale, Model model) {
		logger.info("log => FT_insertTotal");
		
		return "FT/FT_insertTotal";
	}
	@RequestMapping("FT_Chit_Manager")
	public String FT_Chit_Manager(Locale locale, Model model) {
		logger.info("log => FT_Chit_Manager");
		
		return "FT/FT_Chit_Manager";
	}
	
	@RequestMapping("FT_DTB")
	public String FT_DTB(Locale locale, Model model) {
		logger.info("log => FT_DTB");
		
		return "FT/FT_DTB";
	}
	
	@RequestMapping("FT_BS")
	public String FT_BS(Locale locale, Model model) {
		logger.info("log => FT_BS");
		
		return "FT/FT_BS";
	}
	
	@RequestMapping("FT_IS")
	public String FT_IS(Locale locale, Model model) {
		logger.info("log => FT_IS");
		
		return "FT/FT_IS";
	}
	
	@RequestMapping("FT_p_cost")
	public String FT_p_cost(Locale locale, Model model) {
		logger.info("log => FT_p_cost");
		
		return "FT/FT_p_cost";
	}
	
	@RequestMapping("FT_funds_state")
	public String FT_funds_state(Locale locale, Model model) {
		logger.info("log => FT_funds_state");
		
		return "FT/FT_funds_state";
	}
	
	@RequestMapping("FT_sa_state")
	public String FT_sa_state(Locale locale, Model model) {
		logger.info("log => FT_sa_state");
		
		return "FT/FT_sa_state";
	}
	
	@RequestMapping("FT_capital_plan")
	public String FT_capital_plan(Locale locale, Model model) {
		logger.info("log => FT_capital_plan");
		
		return "FT/FT_capital_plan";
	}
	//예산 조정 입력
	@RequestMapping("FT_adjustment_input")
	public String FT_adjustment_input(Locale locale, Model model) {
		logger.info("log => FT_adjustment_input");
		
		return "FT/FT_adjustment_input";
	}
	//예산 신청 입력
	@RequestMapping("FT_apply_input")
	public String FT_apply_input(Locale locale, Model model) {
		logger.info("log => FT_apply_input");
		
		return "FT/FT_apply_input";
	}
	//예산 편성 입력
	@RequestMapping("FT_organization_input")
	public String FT_organization_input(Locale locale, Model model) {
		logger.info("log => FT_organization_input");
		
		return "FT/FT_organization_input";
	}
	
	@RequestMapping(value = "FT_chitupdate", produces = "application/text; charset=utf8")
	public @ResponseBody String basic5(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_chitupdate 호출중");
		
		String key = map.get("key").toString();
		String date = map.get("date").toString();
		String no = map.get("no").toString();
		String text = map.get("text").toString();
		String type = map.get("type").toString();
		String num = map.get("num").toString();
		String state = map.get("state").toString();
		String confirmname = map.get("confirmname").toString();
		String devprice = map.get("devprice").toString();
		String writer = map.get("writer").toString();
		String slee = map.get("slee").toString();
		return key + " " + date + " " + no + " " + text + " " + type + " " + num + " " + state + " " + confirmname + " " + devprice
				 + " " + writer + " " + slee; 
	}
}
