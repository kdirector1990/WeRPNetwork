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

import com.pj.erp.service.ERPService;
import com.pj.erp.service.FT_Service;
import com.pj.erp.service.MateralServiceImpl;
import com.pj.erp.service.ST_Service;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Building;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_DTB;
import com.pj.erp.vo.FT.FT_Deposit;
import com.pj.erp.vo.FT.FT_Depreciation;
import com.pj.erp.vo.FT.FT_Land;
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Plan_Result;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_Total;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO;
import com.pj.erp.vo.HR.HR_VO;

@Controller
public class FT_Controller {

	@Autowired
	FT_Service service;
	
	@Autowired
	MateralServiceImpl MSI;
	
	@Autowired
	ST_Service ST;
	
	@Autowired
	ERPService ERP;

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
	public String insertChit(HttpServletRequest req, Model model) {
		logger.info("log => FT_insertChit");
		service.FT_insertChit(req, model);
		
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
	public String insertTotal(HttpServletRequest req, Model model) {
		logger.info("log => FT_insertTotal");

		return "FT/FT_insertTotal";
	}
	
	// 결산자료
	@RequestMapping(value = "FT_insertTotalList")
	public @ResponseBody FT_Total FT_insertTotalList(HttpServletRequest req, Model model) {
		logger.info("url : FT_insertTotalList 호출중");
		return service.FT_TotalSelect(req, model);
	}

	// 결산자료입력 분개하기
	@RequestMapping("FT_journalComplete")
	public String FT_journalComplete(HttpServletRequest req, Model model) {
		logger.info("log => FT_journalComplete");
		
		service.FT_journalComplete(req, model);
		return "FT/FT_journalComplete";
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
	
	// 재무상태표 조회 쿼리
	@RequestMapping(value="FT_search_BS", produces={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> FT_search_BS(@RequestBody Map<String, Object> map, Locale locale, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_search_BS");
		Map<String, Object> bs_map = service.getBsshit(map, req, model);
		return bs_map; 
	}

	@RequestMapping("FT_IS")
	public String FT_IS(Locale locale, Model model) {
		logger.info("log => FT_IS");

		return "FT/FT_IS";
	}
	
	// 손익계산서 조회 쿼리
	@RequestMapping(value="FT_search_IS", produces={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> FT_search_IS(@RequestBody Map<String, Object> map, Locale locale, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_search_IS");
		Map<String, Object> is_map = service.getIsshit(map, req, model);
		return is_map; 
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

		//예산 계획 현황 검색결과
		@RequestMapping(value = "FT_plan_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
		@ResponseBody
		public List<FT_Plan_Result> FT_plan_result(@RequestBody Map<String, Object>map, HttpServletRequest req, Model model) throws ParseException {
			logger.info("log => FT_plan_result");
			List<FT_Plan_Result> list = service.getPlanResult(map, req, model);
			return list;
		}

		//예산계획현황  상세조회
		@RequestMapping("FT_planUpdateDelete")
		public String FT_planUpdateDelete(HttpServletRequest req, Model model) {
			logger.info("log => FT_planUpdateDelete");
			service.selectPlanDetail(req, model); 
			return "FT/FT_planUpdateDelete";
		}

		//예산계획 수정 처리
		@RequestMapping(value = "FT_updatePlanPro", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
		@ResponseBody
		public int FT_updatePlanPro(@RequestBody Map<String, Object>map, HttpServletRequest req, Model model) throws ParseException {
			logger.info("log => FT_updatePlanPro");
			int cnt = service.updatePlan(map, req, model);

			return cnt;
		}

		//예산계획 삭제 처리
		@RequestMapping(value = "FT_deletePlanPro", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
		@ResponseBody
		public int FT_deletePlanPro(@RequestBody Map<String, Object>map, HttpServletRequest req, Model model) throws ParseException {
			logger.info("log => FT_deletePlanPro");
			int cnt = service.deletePlan(map, req, model);

			return cnt;
		}

		// 예산 신청 입력처리
		@RequestMapping("FT_apply_input_pro")
		public String FT_apply_input_pro(HttpServletRequest req, Model model) {
			logger.info("log => FT_apply_input_pro");
			service.FT_applyinput(req, model);
			return "FT/FT_apply_input";
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

		service.FT_DepositAllSelect(req, model);

		return "FT/FT_Deposit";
	}
	
	// 받을어음관리
	@RequestMapping("FT_note")
	public String FT_note(HttpServletRequest req, Model model) {
		logger.info("log => FT_note");

		service.FT_NoteAllSelect(req, model);

		return "FT/FT_note";
	}
	
	// 예금 추가
	@RequestMapping(value = "FT_NoteInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_NoteInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_NoteInsert 호출중");

		String result = service.FT_NoteInsert(map);

		return result;
	} 

	// 예금 수정
	@RequestMapping(value = "FT_NoteUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_NoteUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_NoteUpdate 호출중");
		String result = service.FT_NoteUpdate(map);
		return result;
	}
	
	// 예금 삭제
	@RequestMapping(value = "FT_NoteDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_NoteDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_NoteDelete 호출중");
		String result = service.FT_NoteDelete(map);
		return result;
	}
	
	// 단기대여금 관리
	@RequestMapping("FT_short_Loan")
	public String FT_short_Loan(HttpServletRequest req, Model model) {
		logger.info("log => FT_short_Loan");

		service.FT_LoanAllSelect(req, model);

		return "FT/FT_short_Loan";
	}
	
	// 예금 추가
	@RequestMapping(value = "FT_LoanInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_LoanInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_LoanInsert 호출중");

		String result = service.FT_LoanInsert(map);

		return result;
	}

	// 예금 수정
	@RequestMapping(value = "FT_LoanUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_LoanUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_LoanUpdate 호출중");
		String result = service.FT_LoanUpdate(map);
		return result;
	}
	
	// 예금 삭제
	@RequestMapping(value = "FT_LoanDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_LoanDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_LoanDelete 호출중");
		String result = service.FT_LoanDelete(map);
		return result;
	}
	
	// 단기매매증권 관리
	@RequestMapping("FT_short_Securities")
	public String FT_short_Securities(HttpServletRequest req, Model model) {
		logger.info("log => FT_short_Securities");

		service.FT_SecuritiesAllSelect(req, model);

		return "FT/FT_short_Securities";
	}
	
	// 예금 추가
	@RequestMapping(value = "FT_SecuritiesInsert", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SecuritiesInsert(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SecuritiesInsert 호출중");

		String result = service.FT_SecuritiesInsert(map);

		return result;
	}

	// 예금 수정
	@RequestMapping(value = "FT_SecuritiesUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SecuritiesUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SecuritiesUpdate 호출중");
		String result = service.FT_SecuritiesUpdate(map);
		return result;
	}
	
	// 예금 삭제
	@RequestMapping(value = "FT_SecuritiesDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SecuritiesDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SecuritiesDelete 호출중");
		String result = service.FT_SecuritiesDelete(map);
		return result;
	}

	// 카드관리
	@RequestMapping("FT_CardManagement")
	public String FT_CardManagement(HttpServletRequest req, Model model) {
		logger.info("log => FT_CardManagement");
		service.FT_CardManagementSelect(req, model);
		
		return "FT/FT_CardManagement";
	}

	// 예금목록
	@RequestMapping("FT_Deposit_list")
	public String FT_Deposit_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_Deposit_list");

		service.FT_DepositAllSelect(req, model);
		
		return "FT/FT_Deposit_list";
	}
	
	// 예금관리
	@RequestMapping("FT_depositsub_list")
	public String FT_depositsub_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_depositsub_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
		service.FT_DepositAllSelect(req, model);

		return "FT/FT_depositsub_list";
	}

	// 단기대여금목록
	@RequestMapping("FT_short_Loan_list")
	public String FT_short_Loan_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_short_Loan_list");
		service.FT_LoanAllSelect(req, model);

		return "FT/FT_short_Loan_list";
	}

	// 단기매매증권목록
	@RequestMapping("FT_short_Securities_list")
	public String FT_short_Securities_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_short_Securities_list");
		service.FT_SecuritiesAllSelect(req, model);

		return "FT/FT_short_Securities_list";
	}

	// 받을어음목록
	@RequestMapping("FT_Note_list")
	public String FT_Note_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_Note_list");

		service.FT_NoteAllSelect(req, model);
		
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
	
	//지급어음목록 검색결과
	@RequestMapping(value = "FT_note_payable_list_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<FT_Bill_payment_VO> FT_note_payable_list_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_note_payable_list_result");
		List<FT_Bill_payment_VO> list = service.getBillPaymentList(map, req, model);
		return list;
	}

	// 건물목록
	@RequestMapping("FT_building_management")
	public String FT_building_management(HttpServletRequest req, Model model) {
		logger.info("log => FT_building_management");
		service.FT_BuildingAllSelect(req, model);

		return "FT/FT_building_management";
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
	
	// 계정 목록
	@RequestMapping("FT_department_list")
	public String FT_department_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_department_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
		service.FT_DepartmentAllSelect(req, model);
		return "FT/FT_department_list";
	}
	
	// 증계정 목록
	@RequestMapping("FT_AccSubject_list")
	public String FT_AccSubject_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_Subject_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
		service.FT_AccSubjectAllSelect(req, model);
		return "FT/FT_AccSubject_list";
	}
	
	// 사원 목록
	@RequestMapping("FT_users_list")
	public String FT_users_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_users_list");
		model.addAttribute("key", req.getParameter("key"));
		model.addAttribute("keyname", req.getParameter("keyname"));
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
    public String FT_AccountInsert(HttpServletRequest req, Model model) {
    	logger.info("url : FT_AccountInsert 호출중");
        
        service.FT_AccountInsert(req, model);
        
        return "FT/FT_AccountComplete";
    }

	// 거래처 검색 가져오기
	@RequestMapping(value = "FT_AccountSelect")
	public @ResponseBody List<FT_Account> FT_AccountSelect(HttpServletRequest req) {
		logger.info("url : FT_AccountSelect 호출중");

		return service.FT_AccountSelect(req);
	}
	
	// 거래처 수정
	@RequestMapping(value = "FT_AccountUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_AccountUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_AccountUpdate 호출중");

		return service.FT_AccountUpdate(map);
	}
	
	// 거래처 삭제
	@RequestMapping(value = "FT_AccountDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_AccountDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_AccountDelete 호출중");

		return service.FT_AccountDelete(map);
	}
	
	// 거래처 검색 가져오기
	@RequestMapping(value = "FT_AccountOneSelect")
	public @ResponseBody FT_Account FT_AccountOneSelect(HttpServletRequest req) {
		logger.info("url : FT_AccountOneSelect 호출중");

		return service.FT_AccountOneSelect(req);
	}

	// 계정과목 검색 가져오기
	@RequestMapping(value = "FT_SubjectSelect")
	public @ResponseBody List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_SubjectSelect 호출중");

		return service.FT_SubjectSelect(req, model);
	}
	
	// 계정과목 검색 가져오기
	@RequestMapping(value = "FT_DepartmentSelect")
	public @ResponseBody List<HR_VO> FT_DepartmentSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_AccountSelect 호출중");

		return service.FT_DepartmentSelect(req, model);
	}
	
	// 계정과목 검색 가져오기
	@RequestMapping(value = "FT_DepositSelect")
	public @ResponseBody List<FT_Deposit> FT_DepositSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_AccountSelect 호출중");

		return service.FT_DepositSelect(req, model);
	}
	
	// 계정과목 검색 가져오기
	@RequestMapping(value = "FT_AccSubjectSelect")
	public @ResponseBody List<FT_Subject> FT_AccSubjectSelect(HttpServletRequest req, Model model) {
		logger.info("url : FT_AccSubjectSelect 호출중");

		return service.FT_AccSubjectSelect(req, model);
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
	
	// 적금 삭제
	@RequestMapping(value = "FT_SavingsDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_SavingsDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_SavingsDelete 호출중");
		String result = service.FT_SavingsDelete(map);
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
	
	// 예금 삭제
	@RequestMapping(value = "FT_DepositDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_DepositDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_DepositDelete 호출중");
		String result = service.FT_DepositDelete(map);
		return result;
	}
	
	
	// 분개 데이터 값 불러오기
	@RequestMapping(value = "FT_chitSelect")
	public @ResponseBody List<FT_Chit> FT_chitSelect(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_chitSelect 호출중");

		return service.FT_chitSelect(map, model);
	}
	
	// 전표승인처리
	@RequestMapping(value = "FT_CheckFormal", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_CheckFormal(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_CheckFormal 호출중");

		return service.FT_CheckFormal(map, model);
	}

	// 전표승인처리
	@RequestMapping(value = "FT_journalList")
	public @ResponseBody List<FT_Chit> FT_journalList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_journalList 호출중");

		return service.FT_journalList(map, model);
	}
	
	// 거래처 원장 리스트 출력
	@RequestMapping(value = "FT_ledgerList")
	public @ResponseBody List<FT_Ledger> FT_ledgerList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_ledgerList 호출중");

		return service.FT_ledgerList(map, model);
	}
	
	// 거래처 원장 리스트 출력
	@RequestMapping(value = "FT_ledgerAccList")
	public @ResponseBody List<FT_Chit> FT_ledgerAccList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_ledgerAccList 호출중");

		return service.FT_ledgerAccList(map, model);
	}
	
	// 일별 리스트 출력
	@RequestMapping(value = "FT_DTBDayList")
	public @ResponseBody List<List<FT_DTB>> FT_DTBDayList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_DTBDayList 호출중");

		return service.FT_DTBDayList(map, model);
	}
	
	// 월별 리스트 출력
	@RequestMapping(value = "FT_DTBMonthList")
	public @ResponseBody List<List<FT_DTB>> FT_DTBMonthList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_DTBMonthList 호출중");

		return service.FT_DTBMonthList(map, model);
	}
	
	// 카드 추가
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
		String result = service.FT_CardManagementInsert(map);
		return result;
	}
	
	// 카드 수정
	@RequestMapping(value = "FT_CardManagementUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_CardManagementUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_CardManagementUpdate 호출중");
		String result = service.FT_CardManagementUpdate(map);
		return result;
	}
	
	// 카드 삭제
	@RequestMapping(value = "FT_CardManagementDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_CardManagementDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_CardManagementDelete 호출중");
		String result = service.FT_CardManagementDelete(map);
		return result;
	}
	


	// 건물 추가    
    @RequestMapping(value="FT_BuildingInsert")
    public String FT_BuildingInsert(HttpServletRequest req, Model model) {
    	logger.info("url : FT_BuildingInsert 호출중");
        
        service.FT_BuildingInsert(req, model);
        
        return "FT/FT_BuildingComplete";
    }
	
	// 건물 수정
	@RequestMapping(value = "FT_BuildingUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_BuildingUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_BuildingUpdate 호출중");

		return service.FT_BuildingUpdate(map);
	}
	
	// 건물 삭제
	@RequestMapping(value = "FT_BuildingDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_BuildingDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_BuildingDelete 호출중");

		return service.FT_BuildingDelete(map);
	}
	
	// 건물 검색 가져오기
	@RequestMapping(value = "FT_BuildingOneSelect")
	public @ResponseBody FT_Building FT_BuildingOneSelect(HttpServletRequest req) {
		logger.info("url : FT_BuildingOneSelect 호출중");

		return service.FT_BuildingOneSelect(req);
	}
	
	// 설비 목록
	@RequestMapping("FT_facility_list")
	public String FT_facility_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_facility_list");

		return "FT/FT_facility_list";
	}

	//설비목록 검색결과
	@RequestMapping(value = "FT_facility_list_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<FT_facility_list_VO> FT_facility_list_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_facility_list_result");
		List<FT_facility_list_VO> list = service.getFacilityList(map, req, model);
		return list;
	}

	// 토지 목록
	@RequestMapping("FT_land_list")
	public String FT_land_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_land_list");

		service.FT_LandAllSelect(req, model);
		return "FT/FT_land_list";
	}
	
	//토지목록 검색결과
	@RequestMapping(value = "FT_land_list_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<FT_land_list_VO> FT_land_list_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => FT_land_list_result");
		List<FT_land_list_VO> list = service.getLandList(map, req, model);
		return list;
	}
	
	// 토지 추가    
    @RequestMapping(value="FT_LandInsert")
    public String FT_LandInsert(HttpServletRequest req, Model model) {
    	logger.info("url : FT_LandInsert 호출중");
        
        service.FT_LandInsert(req, model);
        
        return "FT/FT_LandComplete";
    }
    
	// 토지 수정
	@RequestMapping(value = "FT_LandUpdate", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_LandUpdate(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_LandUpdate 호출중");

		return service.FT_LandUpdate(map);
	}
	
	// 토지 삭제
	@RequestMapping(value = "FT_LandDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String FT_LandDelete(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("url : FT_LandDelete 호출중");

		return service.FT_LandDelete(map);
	}
	
	// 토지 검색 가져오기
	@RequestMapping(value = "FT_LandOneSelect")
	public @ResponseBody FT_Land FT_LandOneSelect(HttpServletRequest req) {
		logger.info("url : FT_LandOneSelect 호출중");

		return service.FT_LandOneSelect(req);
	}
	
	// 감가 상각 현황
	@RequestMapping("FT_Depreciation_list")
	public String FT_Depreciation_list(HttpServletRequest req, Model model) {
		logger.info("log => FT_Depreciation_list");

		return "FT/FT_Depreciation_list";
	}
	
	// 감가상각 전체 불러오기
	@RequestMapping(value = "FT_DepreciationList")
	public @ResponseBody List<FT_Depreciation> FT_DepreciationList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_DepreciationList 호출중");

		return service.FT_DepreciationList(map, model);
	}
	
	// 감가상각 세부 불러오기
	@RequestMapping(value = "FT_BDepreciationDataList")
	public @ResponseBody List<FT_Depreciation> FT_BDepreciationDataList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_BDepreciationDataList 호출중");

		return service.FT_BDepreciationDataList(map, model);
	}
	
	// 감가상각 세부 불러오기
	@RequestMapping(value = "FT_LDepreciationDataList")
	public @ResponseBody List<FT_Depreciation> FT_LDepreciationDataList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_LDepreciationDataList 호출중");

		return service.FT_LDepreciationDataList(map, model);
	}
	
	// 감가상각 세부 불러오기
	@RequestMapping(value = "FT_EDepreciationDataList")
	public @ResponseBody List<FT_Depreciation> FT_EDepreciationDataList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_EDepreciationDataList 호출중");

		return service.FT_EDepreciationDataList(map, model);
	}
	
	// 감가상각 세부 불러오기
	@RequestMapping(value = "FT_CDepreciationDataList")
	public @ResponseBody List<FT_Depreciation> FT_CDepreciationDataList(@RequestBody Map<String, Object> map, Model model) {
		logger.info("url : FT_CDepreciationDataList 호출중");

		return service.FT_CDepreciationDataList(map, model);
	}
	
}
