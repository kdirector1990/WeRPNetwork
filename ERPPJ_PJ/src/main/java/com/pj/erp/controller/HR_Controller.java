package com.pj.erp.controller;

import java.text.ParseException;
import java.util.List;
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

import com.pj.erp.persistence.HR_DAO;
import com.pj.erp.service.CT_Service;
import com.pj.erp.service.HR_Service;
import com.pj.erp.vo.HR.HR_FamilyVO;
import com.pj.erp.vo.HR.HR_GreetingVO;
import com.pj.erp.vo.HR.HR_PaystepVO;
import com.pj.erp.vo.HR.HR_PhysicalVO;
import com.pj.erp.vo.HR.HR_RecordVO;
import com.pj.erp.vo.HR.HR_SalaryVO;
import com.pj.erp.vo.HR.HR_Time_VO;
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.HR.HR_YearService_VO;
import com.pj.erp.vo.HR.HR_nfc_log;

@Controller
public class HR_Controller {

	@Autowired
	HR_Service service;	
	
	@Autowired
	CT_Service CT;
	
	private static final Logger logger = LoggerFactory.getLogger(HR_Controller.class);
	
	// 사원 등록 페이지
	@RequestMapping("HR_InputHR")
	public String HR_InputHR(HttpServletRequest req, Model model) {
		logger.info("log => HR_InputHR");
		service.departmentList(req, model);
		service.positionList(req, model);
		service.rankList(req, model);
		 
		return "HR/HR_InputHR";
	}
	
	// RPA 사원 등록ㄸ
	@RequestMapping("HR_InputHR_RPA")
	public String HR_InputHR_RPA(HttpServletRequest req, Model model) {
		logger.info("log => HR_InputHR_RPA");
		service.departmentList(req, model);
		service.positionList(req, model);
		service.rankList(req, model);
		 
		return "HR/HR_InputHR_RPA";
	}
	
	// 사원 등록 처리 페이지
	@RequestMapping(value="HR_inputFoundation", method=RequestMethod.POST) 
	public String inputFoundation(MultipartHttpServletRequest req, Model model) {
		logger.info("log => HR_inputFoundation");
		service.inputFoundation(req, model);		
		
		return "HR/HR_InputHR";		
	}		
	
	// 사원정보 수정페이지 - 안씀
	@RequestMapping("HR_modifyFoundation")
	public String HR_modifyFoundation(HttpServletRequest req, Model model) {
		logger.info("log = > HR_modifyFoundation");
		service.modifyFoundationView(req, model);
		service.departmentList(req, model);
		service.positionList(req, model);
		service.rankList(req, model);
		
		return "HR/HR_modifyFoundation";
	}
	
	// 사원정보 수정처리
	@RequestMapping(value="HR_modifyFoundationPro", method=RequestMethod.POST) 
	public String HR_modifyFoundationPro(MultipartHttpServletRequest req, Model model) {
		logger.info("log = > HR_modifyFoundationPro");
		service.modifyFoundationPro(req, model);
		
		return  "HR/HR_FoundationLocation";
	}
	
	// 신체정보 수정페이지 - 안씀
	@RequestMapping("HR_modifyPhysicaly")
	public String HR_modifyPhysicaly(HttpServletRequest req, Model model) {
		logger.info("log => HR_modifyPhysicaly");
		service.modifyPhysicalyView(req, model);
		
		return "HR/HR_modifyPhysicaly";
	}
	
	// 신체정보 수정 처리
	@RequestMapping("HR_modifyPhysicalyPro")
	public String HR_modifyPhysicalyPro(HttpServletRequest req, Model model) {
		logger.info("log => HR_modifyPhysicalyPro");
		service.modifyPhysicalyPro(req, model);
		
		return "HR/HR_PhysicalyLocation";
	}
	
	// 가족정보 수정처리
	@RequestMapping("HR_modifyFamilyPro")
	public String HR_modifyFamilyPro(HttpServletRequest req, Model model) {
		logger.info("log => HR_modifyFamilyPro");
		service.modifyFamilyPro(req, model);
		
		return "HR/HR_FamilyLocation";
	}
	
	/*
	// 중복확인 페이지
	@RequestMapping("HR_userChk")
	public String HR_userChk(HttpServletRequest req, Model model) {
		logger.info("url => HR_userChk");
		service.userChk(req, model);
		
		return "HR/HR_userChk";
	}
	*/
	
	/*
	 * @RequestMapping("HR_inputProHR3") public String
	 * HR_inputProHR3(HttpServletRequest req, Model model) {
	 * logger.info("log => HR_inputProHR3");
	 * 
	 * return "HR/HR_InputHR"; }
	 */
	
	/*@RequestMapping("joinPro")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("url == > joinPro");
		service.inputHRPro(req, model);
		return "index";
	}*/
	
	// 사원정보 수정용 상세페이지
	@RequestMapping("HR_update_Fou")
	@ResponseBody	
	public HR_VO HR_update_Fou(HttpServletRequest req, Model model) {
		logger.info("log => HR_update_Fou");
		
		HR_VO data = service.HR_select_username(req, model);
		return data;
	}
	
	// 신체정보 수정용 상세페이지
	@RequestMapping("HR_update_Phy")
	@ResponseBody
	public HR_PhysicalVO HR_update_Phy(HttpServletRequest req, Model model) {
		logger.info("log => HR_update_Phy");
		
		HR_PhysicalVO data = service.HR_select_physical(req, model);
		
		return data;
	}
	
	// 가족정보 수정용 상세페이지
	@RequestMapping("HR_update_Fam")
	@ResponseBody
	public HR_FamilyVO HR_update_Fam(HttpServletRequest req, Model model) {
		logger.info("log => HR_update_Fam");
		
		HR_FamilyVO data = service.HR_select_family(req, model);
		
		return data;
	}
	
	// 사원정보현황 조회 페이지
	@RequestMapping("HR_EmployeeInformation")
	public String HR_EmployeeInformation(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeeInformation");
		service.selectFoundation(req, model);
		service.selectPhysical(req, model);
		service.departmentList(req, model);
		service.positionList(req, model);
		service.rankList(req, model);
		
		return "HR/HR_EmployeeInformation";
	}
	
	//사원정보 검색결과 리스트 불러오기
	@RequestMapping(value = "HR_EmployeeInformation_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public List<HR_VO> HR_EmployeeInformation_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_EmployeeInformation_result");
		List<HR_VO> list = service.getUsers(map, req, model);
		
		return list;
	}
	
	// 신체정보현황 페이지
	@RequestMapping("HR_EmployeePhysicaly")
	public String HR_EmployeePhysicaly(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeePhysicaly");
		
		return "HR/HR_EmployeePhysicaly";
	}
	
	//신체정보 검색결과 리스트 불러오기
	@RequestMapping(value = "HR_EmployeePhysicaly_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<HR_PhysicalVO> HR_EmployeePhysicaly(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_EmployeePhysicaly");
		List<HR_PhysicalVO> list = service.getPhysical(map, req, model);
		return list;
	}
	
	// 가족정보현황 페이지
	@RequestMapping("HR_EmployeeFamily")
	public String HR_EmployeeFamily(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeeFamily");
		
		return "HR/HR_EmployeeFamily";
	}
	
	//가족정보 검색결과 리스트 불러오기
	@RequestMapping(value = "HR_EmployeeFamily_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public List<HR_FamilyVO> HR_EmployeeFamily_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_EmployeeFamily_result");
		List<HR_FamilyVO> list = service.searchFamily(map, req, model);
		return list;
	}
	
	//책정임금현황
	@RequestMapping("HR_EmployeeSalary")
	public String HR_EmployeeSalary(HttpServletRequest req, Model model) {
		logger.info("log => HR_EmployeeSalary");
		
		return "HR/HR_EmployeeSalary";
	}
	
	//책정임금현황 검색결과
	@RequestMapping(value = "HR_EmployeeSalary_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<HR_SalaryVO> HR_EmployeeSalary_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_EmployeeSalary_result");
		List<HR_SalaryVO> list = service.getSalary(map, req, model);
		return list;
	}
	
	//발령공고 검색결과
	@RequestMapping(value = "HR_appointment_report_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<HR_RecordVO> HR_appointment_report_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_appointment_report_result");
		List<HR_RecordVO> list = service.getRecord(map, req, model);
		return list;
	}
	
	//인사고과/상벌현황
	@RequestMapping("HR_GreetingPunishment")
	public String HR_GreetingPunishment(HttpServletRequest req, Model model) {
		logger.info("log => HR_GreetingPunishment");		
		
		return "HR/HR_GreetingPunishment";
	}
	
	//인사고과/상벌현황 검색결과
	@RequestMapping(value = "HR_GreetingPunishment_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<HR_GreetingVO> HR_GreetingPunishment_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_GreetingPunishment_result");
		List<HR_GreetingVO> list = service.getGreeting(map, req, model);
		return list;
	}	
	
	// 근속년수현황
	@RequestMapping("HR_Yearsofservice")
	public String HR_Yearsofservice(HttpServletRequest req, Model model) {
		logger.info("log => HR_Yearsofservice");
		
		return "HR/HR_Yearsofservice";
	}
	
	//근속년수 검색결과
	@RequestMapping(value = "HR_Yearsofservice_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<HR_YearService_VO> HR_Yearsofservice_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_Yearsofservice_result");
		List<HR_YearService_VO> list = service.getYearofservice(map, req, model);
		return list;
	}	
	
	@RequestMapping("HR_LeaveStandard")
	public String HR_LeaveStandard(HttpServletRequest req, Model model) {
		logger.info("log => HR_LeaveStandard");
		
		return "HR/HR_LeaveStandard";
	}
	
	// 인사발령등록 페이지
	@RequestMapping("HR_Greeting")
	public String HR_Greeting(HttpServletRequest req, Model model) {
		logger.info("log => HR_Greeting");
		service.departmentList(req, model);
		service.positionList(req, model);
		service.selectAppointment(req, model);
		
		return "HR/HR_Greeting";
	}
	
	// 사원번호 검색창
	@RequestMapping("HR_searchUsername")
	public String HR_searchUsername(HttpServletRequest req, Model model) {
		logger.info("log => HR_searchUsername");
		
		return "HR/HR_searchUsername";
	}
	
	// 사원번호 검색목록 가져오기
	@RequestMapping("HR_searchUsername_result")
	public String HR_searchUsername_result(HttpServletRequest req, Model model) {
		logger.info("log => HR_searchUsername_result");
		service.searchUsername(req, model);
		
		return "HR/HR_searchUsername_result";
	}
	
	// 공고코드 검색창
	@RequestMapping("HR_searchAp_code")
	public String HR_searchAp_code(HttpServletRequest req, Model model) {
		logger.info("log => HR_searchAp_code");
		
		return "HR/HR_searchAp_code";
	}
	
	// 발령공고 검색목록 가져오기
	@RequestMapping("HR_searchAp_code_result")
	public String HR_searchAp_code_result(HttpServletRequest req, Model model) {
		logger.info("log => HR_searchAp_code_result");
		service.searchAp_code(req, model);
		
		return "HR/HR_searchAp_code_result";
	}
	
	// 직잭변경 등록
	@RequestMapping("HR_recordinput")
	public String HR_recordinput(HttpServletRequest req, Model model) {
		logger.info("log => HR_recordinput");
		service.HR_recordinput(req, model);
		
		return "HR/HR_recordLocation";
	}
	
	/*@RequestMapping("HR_record_input_pro")
	public String HR_record_input_pro(HttpServletRequest req, Model model) {
		logger.info("log => HR_record_input_pro");
		service.HR_recordinput(req, model);
		return "HR/HR_record_input_pro";
	}*/
	
	// 발령공고 등록
	@RequestMapping("HR_APinput")
	public String HR_APinput(HttpServletRequest req, Model model) {
		logger.info("log = > HR_APinput");
		service.HR_APinput(req, model);
		
		return "HR/HR_APinputLocation";
	}
	
	// 인사발령공고 조회 페이지
	@RequestMapping("HR_appointment_notice")
	public String HT_appointment_notice(HttpServletRequest req, Model model) {
		logger.info("log => HR_appointment_notice");
		
		return "HR/HR_appointment_notice";
	}
	
	// 인사발령리포트 조회 페이지
	@RequestMapping("HR_appointment_report")
	public String HR_appointment_report(HttpServletRequest req, Model model) {
		logger.info("log => HR_appointment_report");
		
		return "HR/HR_appointment_report";
	}
	
	@RequestMapping("HR_work_record")
	public String HR_work_record(HttpServletRequest req, Model model) {
		logger.info("log => HR_work_record");
		
		CT.select_DEP(req, model);
		
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
		return vo;
	}
	
	//호봉테이블(호봉 수정)
	@RequestMapping("HR_GoodPay_payUpdate")
	@ResponseBody
	public int HR_GoodPay_payUpdate(HttpServletRequest req, Model model) {
		logger.info("log => HR_GoodPay_payUpdate");
		int updateCnt = service.updateMoney(req, model);
		return updateCnt;
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
	
	// 부서등록 페이지
	@RequestMapping("HR_InputDepartment")
	public String InputDepartment(HttpServletRequest req, Model model) {
		logger.info("log => InputDepartment");				
		
		return "HR/HR_InputDepartment"; 
	}
	
	// 부서등록 처리
	@RequestMapping("HR_inputDepartmentPro") 
	public String inputDepartmentPro(HttpServletRequest req, Model model) {
		logger.info("log => inputDepartmentPro");
		
		service.inputDepartmentPro(req, model);
		
		return "index"; 
	}
	
	//부서조회
	@RequestMapping("HR_searchDepartment")
	public String searchDeapartment(HttpServletRequest req, Model model) {
		logger.info("log => searchDepartment");
		
		return "HR/HR_searchDepartment";
	}
	
	//부서조회 처리
	@RequestMapping("HR_searchDepartment_result")
	@ResponseBody
	public List<HR_VO> HR_searchDepartment_result(HttpServletRequest req, Model model) {
		logger.info("log => HR_searchDepartment_result");
		List<HR_VO> list = service.getDepartment(req, model);
		
		return list;
	}
	/*
	 * @RequestMapping("HR_InputHRex")
	public String HR_InputHRex(HttpServletRequest req, Model model) {
		logger.info("log => HR_InputHR");
		
		service.inputHRPro(req, model); 
		return "HR/HR_InputHR_ex";
	}
	 */
	
	//근태(사원정보 가져오기)
	@RequestMapping("HR_User_Time")
	@ResponseBody
	public List<HR_Time_VO> HR_User_Time(HttpServletRequest req, Model model) {
		logger.info("log => HR_User_Time");
		
		List<HR_Time_VO> vo = service.selectUserHR(req, model);
		
		return vo;
	}
	
	//근태(사원 출근 입력)
	@RequestMapping("HR_Start_Work")
	@ResponseBody
	public int HR_Start_Work(HttpServletRequest req, Model model) {
		logger.info("log => HR_Start_Work");
		
		int insertCnt = service.InsertStartWork(req, model);
		
		return insertCnt;
	}
		
	//근태(사원 퇴근 입력)
	@RequestMapping("HR_End_Work")
	@ResponseBody
	public int HR_End_Work(HttpServletRequest req, Model model) {
		logger.info("log => HR_End_Work");
		
		int updateCnt = service.InsertEndWork(req, model);
		
		return updateCnt;
	}

	//근태(사원 근태 월, 일, 시간 정보 가져오기)
	@RequestMapping("Select_Users_Work_Data")
	@ResponseBody
	public List<HR_Time_VO> Select_Users_Work_Data(HttpServletRequest req, Model model) {
		logger.info("log => Select_Users_Work_Data");
		
		List<HR_Time_VO> vo = service.DetailUserWork(req, model);
		
		return vo;
	}
	
	//근태(사원 근태정보 가져오기)
	@RequestMapping("HR_select_count")
	@ResponseBody
	public List<HR_Time_VO> HR_select_count(HttpServletRequest req, Model model) {
		logger.info("log => HR_select_count");
		
		List<HR_Time_VO> vo = service.selectCountMonth(req, model);
		
		return vo;
	}
	
	// nfc 기록 메뉴(임시)
	@RequestMapping("HR_nfc")
	public String HR_nfc(HttpServletRequest req, Model model){
		
		return "HR/HR_nfc_log"; 	
	}
	
	// nfc 기록 조회(임시)
	@RequestMapping("HR_nfc_result")
	@ResponseBody
	public List<HR_nfc_log> HR_nfc_result(HttpServletRequest req, Model model) {
		logger.info("log => HR_nfc_result");
		
		List<HR_nfc_log> nfclog = service.getNfcLog(req, model); 
		
		return nfclog;
	}
	
	// 인사발령공고들
	@RequestMapping(value = "HR_position_record_result", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public List<HR_RecordVO> HR_position_record_result(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_position_record_result");
		List<HR_RecordVO> list = service.getPositions(map, req, model);
		return list;
	}
	
	// 인사발령공고 변경된 내용들
	@RequestMapping(value = "HR_position_record_list", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public List<HR_RecordVO> HR_position_record_list(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => HR_position_record_list");
		List<HR_RecordVO> list = service.getRecords(map, req, model);
		return list;
	}
	
	
	// 사이드바 출근
	@RequestMapping("HR_Start_Work_Sidebar")
	@ResponseBody
	public int HR_Start_Work_Sidebar(HttpServletRequest req, Model model) {
		logger.info("log => HR_Start_Work_Sidebar");
		
		int insertCnt = service.sidebarWorkStart(req, model);
		
		return insertCnt;
	}
	
	//사이드바 퇴근
	@RequestMapping("HR_End_Work_Sidebar")
	@ResponseBody
	public int HR_End_Work_Sidebar(HttpServletRequest req, Model model) {
		logger.info("log => HR_End_Work_Sidebar");
		
		int updateCnt = service.sidebarEndWork(req, model);
		return updateCnt;
	}
	
	//지각,조퇴 일수 가져오기 
	@RequestMapping("HR_Late_Check")
	@ResponseBody
	public List<HR_Time_VO> HR_Late_Check(HttpServletRequest req, Model model) {
		logger.info("log => HR_Late_Check");
		
		List<HR_Time_VO> vo = service.LateDateSelect(req, model);
		
		return vo;
	}
	
	//NFC데이터 체크박스 지우기
	@RequestMapping("HR_NFC_Delete")
	@ResponseBody
	public int HR_NFC_Delete(HttpServletRequest req, Model model) {
		logger.info("log => HR_NFC_Delete");
		
		int deleteCnt = service.deleteNfcSelect(req, model);
		
		return deleteCnt;
	}
	
	// 개인정보수정
	/*@RequestMapping("HR_modifyUserView")
	public String modifyUser(MultipartHttpServletRequest req, Model model) {
		logger.info("log => HR_modifyUserView");
		service.modifyUserView(req, model);
		
		return "HR/HR_modifyUserView";
		
	}
	
	// 개인정보 수정처리
	@RequestMapping(value="HR_modifyUserPro", method=RequestMethod.POST) 
	public String HR_modifyUserPro(MultipartHttpServletRequest req, Model model) {
		logger.info("log = > HR_modifyUserPro");
		service.modifyUserPro(req, model);
		
		return  "HR/HR_FoundationLocation";
	}*/
	
	
}
