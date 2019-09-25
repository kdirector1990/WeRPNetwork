package com.pj.erp.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.vo.HR.HR_GreetingVO;
import com.pj.erp.vo.HR.HR_PaystepVO;
import com.pj.erp.vo.HR.HR_PhysicalVO;
import com.pj.erp.vo.HR.HR_RecordVO;
import com.pj.erp.vo.HR.HR_SalaryVO;
import com.pj.erp.vo.HR.HR_Time_VO;
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.HR.HR_YearService_VO;
import com.pj.erp.vo.HR.HR_nfc_log;

public interface HR_Service {
	
	// 인사정보등록
	public void inputFoundation(HttpServletRequest req, Model model);
		
	// 부서코드 가져오기
	public void departmentList(HttpServletRequest req, Model model);
	
	// 직책 가져오기
	public void positionList(HttpServletRequest req, Model model);
	
	// 직급 가져오기
	public void rankList(HttpServletRequest req, Model model);	
	
	//호봉테이블 직급메서드
	public void selectRank(HttpServletRequest req, Model model);
	
	//호봉테이블 호봉이력 가져오기
	public List<HR_PaystepVO> selectMoney(HttpServletRequest req, Model model);
	
	//호봉테이블 호봉 수정하기
	public int updateMoney(HttpServletRequest req, Model model);

	// 부서 등록
	public void inputDepartmentPro(HttpServletRequest req, Model model);
	
	//인사고과/상벌현황 검색
	public List<HR_GreetingVO> getGreeting(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;

	//책정임금현황 검색
	public List<HR_SalaryVO> getSalary(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;	
	
	// 사원정보 현황
	public void selectFoundation(HttpServletRequest req, Model model);
	
	// 신체정보 현황
	public void selectPhysical(HttpServletRequest req, Model model);
	
	// 사원정보 상세페이지
	public void modifyFoundationView(HttpServletRequest req, Model model);
	
	// 사원정보 수정처리
	public void modifyFoundationPro(HttpServletRequest req, Model model);
	
	// 신체정보 상세페이지
	public void modifyPhysicalyView(HttpServletRequest req, Model model);
	
	// 신체정보 수정처리
	public void modifyPhysicalyPro(HttpServletRequest req, Model model);
	
	// 가족정보 상세페이지
	public void modifyFamilyView(HttpServletRequest req, Model model);
	
	// 가족정보 수정처리
	public void modifyFamilyPro(HttpServletRequest req, Model model);
	
	// 사원정보 조회
	public List<HR_VO> getUsers(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// 신체정보 조회
	public List<HR_PhysicalVO> getPhysical(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	// 인사발령등록
	public void HR_recordinput(HttpServletRequest req, Model model); 
	
	// 발령공고등록
	public void HR_APinput(HttpServletRequest req, Model model);
	
	/*
	 * // 사원번호 중복체크 public void userChk(HttpServletRequest req, Model model);
	 */
	// 사원코드 가져오기
	public HR_VO HR_select_username(HttpServletRequest req, Model model);
	
	// 신체정보 가져오기
	public HR_PhysicalVO HR_select_physical(HttpServletRequest req, Model model);
	
	//근태(사원목록 가져오기)
	public List<HR_Time_VO> selectUserHR(HttpServletRequest req, Model model);
	
	//근태(출근 입력)
	public int InsertStartWork(HttpServletRequest req, Model model);
	
	//근태(퇴근 입력)
	public int InsertEndWork(HttpServletRequest req, Model model);
	
	//근속년수 검색
	public List<HR_YearService_VO> getYearofservice(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;	
	
	//근태(근무일별 목록 가져오기)
	public List<HR_Time_VO> DetailUserWork(HttpServletRequest req, Model model);
	
	//근태(월별 카운트)
	public List<HR_Time_VO> selectCountMonth(HttpServletRequest req, Model model);
	
	//nfc 기록 조회용(임시)
	public List<HR_nfc_log> getNfcLog(HttpServletRequest req, Model model);
 
	// 직책목록 조회
	public List<HR_VO> getPositions(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException; 
	
	//부서조회
	public List<HR_VO> getDepartment(HttpServletRequest req, Model model);
	
	//사이드바 출근
	public int sidebarWorkStart(HttpServletRequest req, Model model);
	
	//사이드바 퇴근
	public int sidebarEndWork(HttpServletRequest req, Model model);
	
	//지각, 조퇴 정보 가져오기
	public List<HR_Time_VO> LateDateSelect(HttpServletRequest req, Model model);
	
	//NFC 체크박스 지우기
	public int deleteNfcSelect(HttpServletRequest req, Model model);
	
	// e_name으로 username 검색
	public void searchUsername(HttpServletRequest req, Model model);
	
	// ap_name으로 ap_code 검색
	public void searchAp_code(HttpServletRequest req, Model model);
	
	// 발령공고 검색
	public List<HR_RecordVO> getRecord(Map<String,Object> map, HttpServletRequest req, Model model) throws java.text.ParseException;
}
