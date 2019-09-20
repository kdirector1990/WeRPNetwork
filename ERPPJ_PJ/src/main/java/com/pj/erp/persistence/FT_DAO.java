package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Card;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_DTB;
import com.pj.erp.vo.FT.FT_Deposit;
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO;
import com.pj.erp.vo.HR.HR_VO;

public interface FT_DAO {
	
	// 날짜 검색 분개 갯수 가져오기
	public int FT_DateChitCnt(Map<String, Object> map);
	
	// 날짜 검색 분개 갯수 가져오기
	public int FT_ChitMaxNumber(Map<String, Object> map);
	
	// 날짜 검색 분개 갯수 가져오기
	public int FT_chitDataCnt(Map<String, Object> map);
	
	// 분개 데이터 가져오기
	public List<FT_Chit> FT_chitDataLoad(Map<String, Object> map);
	
	// 전표 최근 입력 key 가져오기
	public String FT_chitKeySelect();
	
	// 전표입력
	public int FT_chitInsert(Map<String, Object> map);
	
	// 전표수정
	public int FT_chitupdate(Map<String, Object> map);
	
	// 전표삭제
	public int FT_chitDelete(Map<String, Object> map);
	
	//예산신청입력처리
	public int FT_applyinput();
	
	// 적금 가져오기
	public List<FT_Savings> FT_SavingsSelect();
	
	// 적금 key 가져오기
	public String FT_SavingsKeySelect();
	
	// 적금추가
	public int FT_SavingsPrevInsert(Map<String, Object> map);
	
	public int FT_SavingsInsert(Map<String, Object> map);
	
	// 적금수정
	public int FT_SavingsPrevUpdate(Map<String, Object> map);
	
	public int FT_SavingsUpdate(Map<String, Object> map);
	
	// 적금삭제
	public int FT_SavingsPrevDelete(Map<String, Object> map);
	
	public int FT_SavingsDelete(Map<String, Object> map);
	
	// 예금 가져오기
	public List<FT_Deposit> FT_DepositAllSelect();

	// 예금 검색한 것 가져오기
	public List<FT_Deposit> FT_DepositSelect(String srhval);
	
	// 예금 가져오기
	public int FT_DepositCntSelect(String srhval);
	
	// 예금 key 가져오기
	public String FT_DepositKeySelect();
	
	// 예금추가
	public int FT_DepositPrevInsert(Map<String, Object> map);
	
	public int FT_DepositInsert(Map<String, Object> map);
	
	// 예금수정
	public int FT_DepositPrevDelete(Map<String, Object> map);
	
	public int FT_DepositDelete(Map<String, Object> map);
	
	// 예금삭제
	public int FT_DepositPrevUpdate(Map<String, Object> map);
	
	public int FT_DepositUpdate(Map<String, Object> map);

	// 카드 가져오기
	public List<FT_Card> FT_CardManagementSelect();
	
	// 카드 key 가져오기
	public String FT_CardManagementKeySelect();
	
	// 카드추가
	public int FT_CardManagementPrevInsert(Map<String, Object> map);
	
	public int FT_CardManagementInsert(Map<String, Object> map);
	
	// 카드수정
	public int FT_CardManagementPrevUpdate(Map<String, Object> map);
	
	public int FT_CardManagementUpdate(Map<String, Object> map);
	
	// 카드삭제
	public int FT_CardManagementPrevDelete(Map<String, Object> map);
	
	public int FT_CardManagementDelete(Map<String, Object> map);
	
	// 사업자번호 추가
	public int FT_LicenseInsert(FT_Account vo);
	
	// 거래처 추가
	public int FT_AccountInsert(FT_Account vo);
	
	// 사업자번호 수정
	public int FT_LicenseUpdate(Map<String, Object> map);
	
	// 거래처 수정
	public int FT_AccountUpdate(Map<String, Object> map);
	
	// 사업자번호 삭제
	public int FT_LicenseDelete(Map<String, Object> map);
	
	// 거래처 삭제
	public int FT_AccountDelete(Map<String, Object> map);
	
	
	// 거래처 검색 한 것 개수 가져오기
	public int FT_AccountCntSelect(String srhval);
	
	// 거래처 검색 한 것 하나 가져오기
	public FT_Account FT_AccountOneSelect(String srhval);
	
	// 거래처 검색 한 것 가져오기
	public List<FT_Account> FT_AccountSelect(String srhval);
	
	// 거래처가져오기
	public List<FT_Account> FT_AccountAllSelect();
	
	// 계정과목가져오기
	public List<FT_Subject> FT_SubjectAllSelect();
	
	// 계정과목 검색 한 것 개수 가져오기
	public int FT_SubjectCntSelect(String srhval);
	
	// 계정과목 검색한 것 가져오기
	public List<FT_Subject> FT_SubjectSelect(String srhval);
	
	// 계정과목가져오기
	public List<FT_Subject> FT_AccSubjectAllSelect();
	
	// 계정과목 검색 한 것 개수 가져오기
	public int FT_AccSubjectCntSelect(String srhval);
	
	// 계정과목 검색한 것 가져오기
	public List<FT_Subject> FT_AccSubjectSelect(String srhval);
	
	// 사원 가져오기
	public List<HR_VO> FT_UsersAllSelect();
	
	// 사원 검색 한 것 개수 가져오기
	public int FT_UsersCntSelect(String srhval);
	
	// 사원 검색한 것 가져오기
	public List<HR_VO> FT_UsersSelect(String srhval);

	//단기차입금 검색결과
	 public List<FT_Short_Borrow_List> getSBorrowList(Map<String, Object> map);
	 
	//장기차입금 검색결과
	 public List<FT_Long_Borrow_List> getLBorrowList(Map<String, Object> map);
	 
	//지급어음목록 검색결과
	 public List<FT_Bill_payment_VO> getBillPaymentList(Map<String, Object> map);
	
	//지급어음목록 검색결과
	 public List<FT_land_list_VO> getLandList(Map<String, Object> map);
	 
	//지급어음목록 검색결과
	 public List<FT_facility_list_VO> getFacilityList(Map<String, Object> map); 
	 
	// 분개 가지고 와라
	 public int FT_chitDistinctCnt(Map<String, Object> map);
	 
	 // 분개 가지고 와라
	 public List<FT_Chit> FT_ChitDistinct(Map<String, Object> map);
	 
	 // 전표승인처리
	 public int FT_CheckFormal(Map<String, Object> map);
	 
	// 검색된 모든 분개 가져오기
	 public int FT_journalListCnt(Map<String, Object> map);
	 
	 // 검색된 모든 분개 가져오기
	 public List<FT_Chit> FT_journalList(Map<String, Object> map);
	 
	 // 거래처 원장 리스트 갯수 가져오기
	 public int FT_ledgerListCnt(Map<String, Object> map);
	 
	 // 거래처 원장 리스트 가져오기
	 public List<FT_Ledger> FT_ledgerList(Map<String, Object> map);
	 
	 // 거래처 원장 리스트 갯수 가져오기
	 public int FT_ledgerAccListCnt(Map<String, Object> map);
	 
	 // 거래처 원장 리스트 가져오기
	 public List<FT_Chit> FT_ledgerAccList(Map<String, Object> map);

	 // 일별 리스트 갯수 가져오기
	 public int FT_DTBDayListCntL(Map<String, Object> map);
	 public int FT_DTBDayListCntM(Map<String, Object> map);
	 public int FT_DTBDayListCntS(Map<String, Object> map);
	 
	 // 일별 리스트 가져오기
	 public List<FT_DTB> FT_DTBDayListL(Map<String, Object> map);
	 public List<FT_DTB> FT_DTBDayListM(Map<String, Object> map);
	 public List<FT_DTB> FT_DTBDayListS(Map<String, Object> map);

	 // 월별 리스트 갯수 가져오기
	 public int FT_DTBMonthListCntL(Map<String, Object> map);
	 public int FT_DTBMonthListCntM(Map<String, Object> map);
	 public int FT_DTBMonthListCntS(Map<String, Object> map);
	 
	 // 월별 리스트 가져오기
	 public List<FT_DTB> FT_DTBMonthListL(Map<String, Object> map);
	 public List<FT_DTB> FT_DTBMonthListM(Map<String, Object> map);
	 public List<FT_DTB> FT_DTBMonthListS(Map<String, Object> map);
}
