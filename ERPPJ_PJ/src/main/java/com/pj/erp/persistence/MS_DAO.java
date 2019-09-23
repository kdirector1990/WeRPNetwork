package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.MS.MS_plan;

//경영지원
public interface MS_DAO{
	
	//기획서 등록
	public int insertPlan(MS_plan vo);
	
	// 기획서 조회
	public List<MS_plan> getPlanList(String username);
	
	//기획서 수정
	public int updatePlan(MS_plan vo);
	
	//기획서 삭제
	public int deletePlan(String plan_code);
	
	// 사원이름 검색 확인
	public int selectEname(String e_name);
	
	//검색 목록 가져오기
	public List<HR_VO> getUsernameList(String e_name);
}
