package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;


import com.pj.erp.vo.HR_PhysicalVO;

import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_VO;

public interface HR_DAO {

	public int insertMember(HR_VO vo);
	
	public int insertMember2(HR_VO vo);
	
	public int insertPhysical(HR_PhysicalVO vo);
	
	public int insertAuth();
	
	//호봉테이블 직급 가져오기
	public List<HR_RankVO> rank();
	
	//호봉테이블 호봉금액 가져오기
	public List<HR_PaystepVO> pay(String rank);
	
	//호봉테이블 금액수정하기
	public int updatePay(HR_PaystepVO vo);
	
	// 부서 등록
	public int insertDepartment(Map<String, Object> map);
}
