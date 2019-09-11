package com.pj.erp.service;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_Subject;

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
	
	// 거래처 추가
	public void FT_AccountInsert(MultipartHttpServletRequest req, Model model);

	// 사원 모두 가져오기
	public void FT_UsersAllSelect(HttpServletRequest req, Model model);
	
	// 사원 검색한 것 가져오기
	public List<HR_VO> FT_UsersSelect(HttpServletRequest req);
	
	// 거래처 모두 가져오기
	public void FT_AccountAllSelect(HttpServletRequest req, Model model);
	
	// 거래처 검색한 것 가져오기
	public List<FT_Account> FT_AccountSelect(HttpServletRequest req);
	
	// 적금 가져오기
	public void FT_SavingsSelect(HttpServletRequest req, Model model);
	
	// 적금추가
	public String FT_SavingsInsert(Map<String, Object> map);
	
	// 적금수정
	public String FT_SavingsUpdate(Map<String, Object> map);
	
	// 예금 가져오기
	public void FT_DepositSelect(HttpServletRequest req, Model model);
	
	// 예금추가
	public String FT_DepositInsert(Map<String, Object> map);
	
	// 예금수정
	public String FT_DepositUpdate(Map<String, Object> map);
	
	// 계정과목 가져오기
	public void FT_SubjectAllSelect(HttpServletRequest req, Model model);
	
	// 계정과목 검색 가져오기
	public List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model);
	
	//예산신청입력처리
	public void FT_applyinput(HttpServletRequest req, Model model);
}
