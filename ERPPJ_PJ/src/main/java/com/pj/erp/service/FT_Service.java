package com.pj.erp.service;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Building;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_DTB;
import com.pj.erp.vo.FT.FT_Deposit;
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO;
import com.pj.erp.vo.HR.HR_VO;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FT_Service {
	
	// 거래번호 최고값 가져오기
	public int FT_chitMaxNumber(Map<String, Object> map);
	
	// 분개 데이터 가져오기
	public List<FT_Chit> FT_chitDataLoad(Map<String, Object> map, Model model);
	
	// 전표입력
	public String FT_chitInsert(Map<String, Object> map);
	
	// 전표수정
	public String FT_chitupdate(Map<String, Object> map);

	// 전표삭제
	public String FT_chitDelete(Map<String, Object> map);
	
	// 전표페이지
	public void FT_insertChit(HttpServletRequest req, Model model);
	
	// 거래처 추가
	public void FT_AccountInsert(HttpServletRequest req, Model model);

	// 거래처 수정
	public String FT_AccountUpdate(Map<String, Object> map);

	// 거래처 삭제
	public String FT_AccountDelete(Map<String, Object> map);
	
	// 사원 모두 가져오기
	public void FT_UsersAllSelect(HttpServletRequest req, Model model);
	
	// 사원 검색한 것 가져오기
	public List<HR_VO> FT_UsersSelect(HttpServletRequest req);
	
	// 거래처 모두 가져오기
	public void FT_AccountAllSelect(HttpServletRequest req, Model model);
	
	// 거래처 검색한 것 가져오기
	public FT_Account FT_AccountOneSelect(HttpServletRequest req);
	
	// 거래처 검색한 것 가져오기
	public List<FT_Account> FT_AccountSelect(HttpServletRequest req);
	
	// 건물 추가
	public void FT_BuildingInsert(HttpServletRequest req, Model model);

	// 건물 수정
	public String FT_BuildingUpdate(Map<String, Object> map);

	// 건물 삭제
	public String FT_BuildingDelete(Map<String, Object> map);
	
	// 건물 모두 가져오기
	public void FT_BuildingAllSelect(HttpServletRequest req, Model model);
	
	// 건물 검색한 것 가져오기
	public FT_Building FT_BuildingOneSelect(HttpServletRequest req);
	
	// 건물 검색한 것 가져오기
	public List<FT_Building> FT_BuildingSelect(HttpServletRequest req);
	
	// 적금 가져오기
	public void FT_SavingsSelect(HttpServletRequest req, Model model);
	
	// 적금추가
	public String FT_SavingsInsert(Map<String, Object> map);
	
	// 적금수정
	public String FT_SavingsUpdate(Map<String, Object> map);
	
	// 적금삭제
	public String FT_SavingsDelete(Map<String, Object> map);
	
	// 예금 가져오기
	public void FT_DepositAllSelect(HttpServletRequest req, Model model);
	
	// 예금 검색한 것 가져오기
	public List<FT_Deposit> FT_DepositSelect(HttpServletRequest req, Model model);
	
	// 예금추가
	public String FT_DepositInsert(Map<String, Object> map);
	
	// 예금수정
	public String FT_DepositUpdate(Map<String, Object> map);
	
	// 예금삭제
	public String FT_DepositDelete(Map<String, Object> map);
	
	// 카드 가져오기
	public void FT_CardManagementSelect(HttpServletRequest req, Model model);
	
	// 카드추가
	public String FT_CardManagementInsert(Map<String, Object> map);
	
	// 카드수정
	public String FT_CardManagementUpdate(Map<String, Object> map);
	
	// 카드삭제
	public String FT_CardManagementDelete(Map<String, Object> map);
	
	// 계정과목 가져오기
	public void FT_SubjectAllSelect(HttpServletRequest req, Model model);
	
	// 계정과목 검색 가져오기
	public List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model);
	
	// 중계정과목 가져오기
	public void FT_AccSubjectAllSelect(HttpServletRequest req, Model model);
	
	// 중계정과목 검색 가져오기
	public List<FT_Subject> FT_AccSubjectSelect(HttpServletRequest req, Model model);
	
	//예산신청입력처리
	public void FT_applyinput(HttpServletRequest req, Model model);
	
	// 분개 데이터 가져오기
	public List<FT_Chit> FT_chitSelect(Map<String, Object> map, Model model);
	
	// 전표 승인처리
	public String FT_CheckFormal(Map<String, Object> map, Model model);
	
	// 검색된 분개 모두 가져오기
	public List<FT_Chit> FT_journalList(Map<String, Object> map, Model model);
	
	// 거래처 분개 리스트 모두 가져오기
	public List<FT_Ledger> FT_ledgerList(Map<String, Object> map, Model model);

	// 거래처 리스트 모두 가져오기
	public List<FT_Chit> FT_ledgerAccList(Map<String, Object> map, Model model);
	
	// 일별 리스트 모두 가져오기
	public List<List<FT_DTB>> FT_DTBDayList(Map<String, Object> map, Model model);
	
	// 월별 리스트 모두 가져오기
	public List<List<FT_DTB>> FT_DTBMonthList(Map<String, Object> map, Model model);
	
	//단기차입금목록 검색결과
	public List<FT_Short_Borrow_List> getSBorrowList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	//장기차입금목록 검색결과
	public List<FT_Long_Borrow_List> getLBorrowList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	//지급어음목록 검색결과
	public List<FT_Bill_payment_VO> getBillPaymentList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	//토지목록 검색결과
	public List<FT_land_list_VO> getLandList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	//토지목록 검색결과
	public List<FT_facility_list_VO> getFacilityList(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
	
	//재무상태표 조회
	public Map<String, Object> getBsshit(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException;
	
}
