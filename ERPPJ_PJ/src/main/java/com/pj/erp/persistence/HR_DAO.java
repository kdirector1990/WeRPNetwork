package com.pj.erp.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.pj.erp.vo.HR_PhysicalVO;
import com.pj.erp.vo.HR_FamilyVO;
import com.pj.erp.vo.HR_GreetingVO;
import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_SalaryVO;
import com.pj.erp.vo.HR_Time_VO;
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
	public List<HR_PhysicalVO> physicalyList();
	
	public HR_PhysicalVO physicaly(String username);
	
	// 사원정보 수정페이지
	public HR_VO getFoundation(String username);
	
	// 사원정보 수정처리
	public int updateFoundation(HR_VO vo);
	
	// 신체정보 수정페이지
	public HR_PhysicalVO getPhysicaly(String username);
	
	// 신체정보 수정처리
	public int updatePhysicaly(HR_PhysicalVO vo);
	
	// 가족정보 수정페이지
	public HR_FamilyVO getFamily(String username);
	
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
	
	// 사원정보 검색 폼
	public List<HR_VO> getUsers(Map<String, Object> map);
	
	// 사원정보 검색 폼
	public List<HR_PhysicalVO> getPhysicaly(Map<String, Object> map);
	
	//근태(사원정보 검색)
	public List<HR_Time_VO> selectUserTime(Map<String, Object> map);
	
	//근태(출근 날짜 있는지)
	public int selectWork(Map<String, Object> map);
	
	//근태(출근입력)
	public int StartWork(String username);
	
	//근태(퇴근 날짜 있는지
	public int selectEndWork(String username);
	
	//근태(퇴근입력)
	public int EndWork(String username);

	// 인사발령등록 처리
	public int HR_recordinput();

	//근태(근무일별 있는가)
	public int DetailWork(HR_Time_VO vo);
	
	public HR_Time_VO DetailWork2 (HR_Time_VO vo);
	
	//근태(근무일별 목록 가져오기)
	public List<HR_Time_VO> SelectDetailWork(HR_Time_VO vo);
	
	public List<HR_Time_VO> SelectDetailWork2(Map<String,Object> map);

}
