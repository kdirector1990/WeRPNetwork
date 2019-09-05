package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.MS.MS_plan;

//경영지원
public interface MS_DAO{
	
	//기획서 등록
	public int insertPlan(MS_plan vo);
	
	// 기획서 조회
	public List<MS_plan> getPlanList();
	
	//기획서 목록 수량
	public int getPlanListCnt();
	
	//기획서 수정
	public int updatePlan(MS_plan vo);
	
	//기획서 삭제
	public int deletePlan(String plan_code);
	
}
