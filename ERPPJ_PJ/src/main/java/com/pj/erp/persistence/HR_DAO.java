package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;


import com.pj.erp.vo.HR_PhysicalVO;
import com.pj.erp.vo.HR_FamilyVO;
import com.pj.erp.vo.HR_GreetingVO;
import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_SalaryVO;
import com.pj.erp.vo.HR_VO;

public interface HR_DAO {

	public int insertMember(HR_VO vo);
	
	public int insertMember2(HR_VO vo);
	
	public int insertPhysical(String username);
	
	public int insertAuth();
	
	public int insertFamily(HR_FamilyVO vo2);
	
	//호봉테이블 직급 가져오기
	public List<HR_RankVO> rank();
	
	//호봉테이블 호봉금액 가져오기
	public List<HR_PaystepVO> pay(String rank);
	
	//호봉테이블 금액수정하기
	public int updatePay(HR_PaystepVO vo);
	
	// 사원정보 가져오기
	public List<HR_VO> foundation();
	
	// 신체정보 가져오기
	public List<HR_PhysicalVO> physicaly();
	
	// 사원정보 수정하기
	
	// 신체정보 수정페이지
	public HR_PhysicalVO getPhysicaly(String username);
	
	// 부서 등록
	public int insertDepartment(Map<String, Object> map);

	//인사고과/상벌현황 검색결과
	public List<HR_GreetingVO> getGreeting(Map<String, Object> map);
	
	//책정임금현황 검색결과
	public List<HR_SalaryVO> getSalary(Map<String, Object> map);
	
	// 부서 목록
	public List<HR_VO> getDepartmentList(Map<String, Object> map);
	
	// 직책 목록
	public List<HR_VO> getPositionList(Map<String, Object> map);
	
	// 직책 목록
	public List<HR_VO> getRankList(Map<String, Object> map);	
	
	// 사원번호 체크
	// public int userChk(String username);
	
	// 사원번호 생성 시퀀스
	public String getUsername();
}
