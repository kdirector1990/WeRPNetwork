package com.pj.erp.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pj.erp.service.FT_Service;

@Controller
public class FT_Controller {

	
	@Autowired 
	FT_Service service;
	 
	
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
	
	//예산 신청 입력처리
	@RequestMapping("FT_apply_input_pro")
	public String FT_apply_input_pro(HttpServletRequest req, Model model) {
		logger.info("log => FT_apply_input_pro");
		service.FT_applyinput(req,model);
		return "FT/FT_apply_input_pro";
	}
	
	// 거래처 관리
	@RequestMapping("FT_BasicAccount_Input")
	public String FT_BasicAccount_Input(Locale locale, Model model) {
		logger.info("log => FT_BasicAccount_Input");
		
		return "FT/FT_BasicAccount_Input";
	}
	
	// 적금관리
	@RequestMapping("FT_Savings")
	public String FT_Savings(Locale locale, Model model) {
		logger.info("log => FT_Savings");
		
		return "FT/FT_Savings";
	}
	
	// 예금관리
	@RequestMapping("FT_Deposit")
	public String FT_Deposit(Locale locale, Model model) {
		logger.info("log => FT_Deposit");
		
		return "FT/FT_Deposit";
	}
	
	// 카드관리
	@RequestMapping("FT_CardManagement")
	public String FT_CardManagement(Locale locale, Model model) {
		logger.info("log => FT_CardManagement");
		
		return "FT/FT_CardManagement";
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
	
	@RequestMapping(value = "FT_AccinputEx", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_AccinputEx(@RequestBody Map<String, Object> map) {
		logger.info("url : FT_AccinputEx 호출중");
		
		service.FT_ACCInsert(map);
		
		return "완료"; 
	}
	
	@RequestMapping(value = "FT_SavingsInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SavingsInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SavingsInsert 호출중");
		String AccCode = map.get("AccCode").toString();
		String AccName = map.get("AccName").toString();
		String SubjectCode = map.get("SubjectCode").toString();
		String SubjectName = map.get("SubjectName").toString();
		String AccountNo = map.get("AccountNo").toString();
		String AccountHolder = map.get("AccountHolder").toString();
		String DevPrice = map.get("DevPrice").toString();
		return AccCode + " " + AccName + " "  + SubjectCode + " " + SubjectName + " " + AccountNo + " " + AccountHolder + " " + DevPrice; 
	}
	
	@RequestMapping(value = "FT_DepositInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_DepositInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SavingsInsert 호출중");
		String AccCode = map.get("AccCode").toString();
		String AccName = map.get("AccName").toString();
		String SubjectCode = map.get("SubjectCode").toString();
		String SubjectName = map.get("SubjectName").toString();
		String AccountNo = map.get("AccountNo").toString();
		String AccountHolder = map.get("AccountHolder").toString();
		return AccCode + " " + AccName + " "  + SubjectCode + " " + SubjectName + " " + AccountNo + " " + AccountHolder; 
	}
	
	@RequestMapping(value = "FT_CardManagementInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_CardManagementInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_CardManagementInsert 호출중");
		String AccCode = map.get("AccCode").toString();
		String SubjectCode = map.get("SubjectCode").toString();
		String CardName = map.get("CardName").toString();
		String CardType = map.get("CardType").toString();
		String CardPurpose = map.get("CardPurpose").toString();
		String Owner = map.get("Owner").toString();
		String PayCode = map.get("PayCode").toString();
		return AccCode + " " + CardName + " "  + SubjectCode + " " + CardType + " " + CardPurpose + " " + CardPurpose + " " + Owner + " " + PayCode; 
	}
}
