package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.SalePlan;

public interface ST_DAO {
	
	// estimate (견적 글 목록)
	public List<Estimate> getestimate(Map<String, Object> map);
	
	
	// salePlan (판매 계획 관리 목록)
	public List<SalePlan> getsaleplan(Map<String, Object> map);
	
	// salePlan 게시글 갯수 구하기
	public int getSaleCnt();

}
