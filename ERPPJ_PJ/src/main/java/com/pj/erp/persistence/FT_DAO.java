package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Subject;

public interface FT_DAO {
	
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
	
	// 거래처 추가
	public int FT_AccInsert(Map<String, Object> map);
	
	// 계정과목가져오기
	public List<FT_Subject> FT_SubjectSelect();
	
	// 거래처가져오기
	public List<FT_Account> FT_AccountSelect();
	
}
