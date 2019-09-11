package com.pj.erp.controller;

import java.text.ParseException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.service.FT_Service;
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;

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

	// 분개 데이터 값 불러오기
	@RequestMapping(value = "FT_chitMaxNumber")
	public @ResponseBody int FT_chitMaxNumber(@RequestBody Map<String, Object> map) {
		logger.info("url : FT_chitMaxNumber 호출중");

		return service.FT_chitMaxNumber(map);
	}

	// 분개 데이터 값 불러오기
	@RequestMapping(value = "FT_chitDataLoad")
	public @ResponseBody List<FT_Chit> FT_chitDataLoad(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_chitDataLoad 호출중");

		return service.FT_chitDataLoad(map, model);
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

	// 예산 조정 입력
	@RequestMapping("FT_adjustment_input")
	public String FT_adjustment_input(Locale locale, Model model) {
		logger.info("log => FT_adjustment_input");

		return "FT/FT_adjustment_input";
	}

	// 예산 신청 입력
	@RequestMapping("FT_apply_input")
	public String FT_apply_input(Locale locale, Model model) {
		logger.info("log => FT_apply_input");

		return "FT/FT_apply_input";
	}

	// 예산 계획 현황
	@RequestMapping("FT_plan")
	public String FT_plan(Locale locale, Model model) {
		logger.info("log => FT_plan");

		return "FT/FT_plan";
	}

	// 예산 신청 입력처리
	@RequestMapping("FT_apply_input_pro")
	public String FT_apply_input_pro(HttpServletRequest req, Model model) {
		logger.info("log => FT_apply_input_pro");
		service.FT_applyinput(req, model);
		return "FT/FT_apply_input_pro";
	}

	// 거래처 관리
	@RequestMapping("FT_BasicAccount_Input")
	public String FT_BasicAccount_Input(HttpServletRequest req, Model model) {
		logger.info("log => FT_BasicAccount_Input");

		service.FT_AccountAllSelect(req, model);
		return "FT/FT_BasicAccount_Input";
	}

	// 적금관리
	@RequestMapping("FT_Savings")
	public String FT_Savings(HttpServletRequest req, Model model) {
		logger.info("log => FT_Savings");

		service.FT_SavingsSelect(req, model);

		return "FT/FT_Savings";
	}

	// 예금관리
	@RequestMapping("FT_Deposit")
	public String FT_Deposit(HttpServletRequest req, Model model) {
		logger.info("log => FT_Deposit");

		service.FT_DepositSelect(req, model);

		return "FT/FT_Deposit";
	}

	// 카드관리
	@RequestMapping("FT_CardManagement")
	public String FT_CardManagement(Locale locale, Model model) {
		logger.info("log => FT_CardManagement");

		return "FT/FT_CardManagement";
	}

	// 예금목록
	@RequestMapping("FT_Deposit_list")
	public String FT_Deposit_list(Locale locale, Model model) {
		logger.info("log => FT_Deposit_list");

		return "FT/FT_Deposit_list";
	}

	// 단기대여금목록
	@RequestMapping("FT_short_Loan_list")
	public String FT_short_Loan_list(Locale locale, Model model) {
		logger.info("log => FT_short_Loan_list");

		return "FT/FT_short_Loan_list";
	}

	// 단기매매증권목록
	@RequestMapping("FT_short_Securities_list")
	public String FT_short_Securities_list(Locale locale, Model model) {
		logger.info("log => FT_short_Securities_list");

		return "FT/FT_short_Securities_list";
	}

	// 받을어음목록
	@RequestMapping("FT_Note_list")
	public String FT_Note_list(Locale locale, Model model) {
		logger.info("log => FT_Note_list");

		return "FT/FT_Note_list";
	}

	// 단기차입금목록
	@RequestMapping("FT_short_borrowings_list")
	public String FT_short_borrowings_list(Locale locale, Model model) {
		logger.info("log => FT_short_borrowings_list");

		return "FT/FT_short_borrowings_list";
	}
	
	//단기차입금목록 검색결과
	@RequestMapping(value = "FT_short_borrowings_list_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<FT_Short_Borrow_List> FT_short_borrowings_list_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_short_borrowings_list_result");
		List<FT_Short_Borrow_List> list = service.getSBorrowList(map, req, model);
		return list;
	}
	
	// 장기차입금목록
	@RequestMapping("FT_long_borrowings_list")
	public String FT_long_borrowings_list(Locale locale, Model model) {
		logger.info("log => FT_long_borrowings_list");

		return "FT/FT_long_borrowings_list";
	}
	
	//장기차입금목록 검색결과
	@RequestMapping(value = "FT_long_borrowings_list_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<FT_Long_Borrow_List> FT_long_borrowings_list_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_long_borrowings_list_result");
		List<FT_Long_Borrow_List> list = service.getLBorrowList(map, req, model);
		return list;
	}

	// 지급어음 목록
	@RequestMapping("FT_note_payable_list")
	public String FT_note_payable_list(Locale locale, Model model) {
		logger.info("log => FT_note_payable_list");

		return "FT/FT_note_payable_list";
	}

	// 건물목록
	@RequestMapping("FT_building_management")
	public String FT_building_management(Locale locale, Model model) {
		logger.info("log => FT_building_management");

		return "FT/FT_building_management";
	}

	// 토지 목록
	@RequestMapping("FT_land_list")
	public String FT_land_list(Locale locale, Model model) {
		logger.info("log => FT_land_list");

		return "FT/FT_land_list";
	}

	// 설비 목록
	@RequestMapping("FT_facility_list")
	public String FT_facility_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_facility_list");

		return "FT/FT_facility_list";
	}

	// 거래처 목록
	@RequestMapping("FT_account_list")
	public String FT_account_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_account_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
		service.FT_AccountAllSelect(req, model);
		return "FT/FT_account_list";
	}

	// 계정 목록
	@RequestMapping("FT_Subject_list")
	public String FT_Subject_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_Subject_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
		service.FT_SubjectAllSelect(req, model);
		return "FT/FT_Subject_list";
	}
	
	// 사원 목록
	@RequestMapping("FT_users_list")
	public String FT_users_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_users_list");
		model.addAttribute("key", req.getParameter("key"));
		service.FT_UsersAllSelect(req, model);
		return "FT/FT_users_list";
	}

	// 사원 검색 가져오기
	@RequestMapping(value = "FT_UsersSelect")
	public @ResponseBody List<HR_VO> FT_UsersSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_UsersSelect 호출중");

		return service.FT_UsersSelect(req);
	}
	
	// 전표 입력
	@RequestMapping(value = "FT_chitInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_chitInsert(@RequestBody Map<String, Object> map, HttpServletRequest req) throws Exception {
		logger.info("url : FT_chitInsert 호출중");
		System.out.println("username" + req.getSession().getAttribute("username"));
		return service.FT_chitInsert(map);
	}

	// 전표수정
	@RequestMapping(value = "FT_chitupdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_chitupdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_chitupdate 호출중");

		return service.FT_chitupdate(map);
	}
	
	// 전표삭제
	@RequestMapping(value = "FT_chitDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_chitDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_chitDelete 호출중");

		return service.FT_chitDelete(map);
	}

	// 거래처 추가    
    @RequestMapping(value="FT_AccountInsert")
    public String FT_AccountInsert(MultipartHttpServletRequest req, Model model) {
    	logger.info("url : FT_AccountInsert 호출중");
        
        service.FT_AccountInsert(req, model);
        
        return "FT/FT_AccountComplete";
    }

	// 거래처 검색 가져오기
	@RequestMapping(value = "FT_AccountSelect")
	public @ResponseBody List<FT_Account> FT_AccountSelect(HttpServletRequest req) {
		logger.info("url : FT_AccountSelect 호출중");
		System.out.println("value = " + req.getParameter("srhval"));

		return service.FT_AccountSelect(req);
	}
	
	// 거래처 검색 가져오기
	@RequestMapping(value = "FT_AccountOneSelect")
	public @ResponseBody FT_Account FT_AccountOneSelect(HttpServletRequest req) {
		logger.info("url : FT_AccountSelect 호출중");
		System.out.println("value = " + req.getParameter("srhval"));

		return service.FT_AccountOneSelect(req);
	}

	// 계정과목 검색 가져오기
	@RequestMapping(value = "FT_SubjectSelect")
	public @ResponseBody List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_AccountSelect 호출중");

		return service.FT_SubjectSelect(req, model);
	}

	// 적금 추가
	@RequestMapping(value = "FT_SavingsInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SavingsInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SavingsInsert 호출중");

		String result = service.FT_SavingsInsert(map);

		return result;
	}

	// 적금 수정
	@RequestMapping(value = "FT_SavingsUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SavingsUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SavingsUpdate 호출중");
		String result = service.FT_SavingsUpdate(map);
		return result;
	}

	// 예금 추가
	@RequestMapping(value = "FT_DepositInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_DepositInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_DepositInsert 호출중");

		String result = service.FT_DepositInsert(map);

		return result;
	}

	// 예금 수정
	@RequestMapping(value = "FT_DepositUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_DepositUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_DepositUpdate 호출중");
		String result = service.FT_DepositInsert(map);
		return result;
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
		return AccCode + " " + CardName + " " + SubjectCode + " " + CardType + " " + CardPurpose + " " + CardPurpose
				+ " " + Owner + " " + PayCode;
	}
}
