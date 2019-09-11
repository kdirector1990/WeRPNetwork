package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;

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
	
	// 적금 가져오기
	public List<FT_Savings> FT_DepositSelect();
	
	// 적금 key 가져오기
	public String FT_DepositKeySelect();
	
	// 적금추가
	public int FT_DepositPrevInsert(Map<String, Object> map);
	
	public int FT_DepositInsert(Map<String, Object> map);
	
	// 적금수정
	public int FT_DepositPrevUpdate(Map<String, Object> map);
	
	public int FT_DepositUpdate(Map<String, Object> map);
	
	// 사업자번호 추가
	public int FT_LicenseInsert(FT_Account vo);
	
	// 거래처 추가
	public int FT_AccountInsert(FT_Account vo);
	
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
	
}
