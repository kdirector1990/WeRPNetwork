package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.SalePlan;

public interface ST_DAO {
	
	// estimate 게시글 갯수 구하기
	public int getestimateCnt();
	
	// estimate (견적 글 목록)
	public List<Estimate> getestimate(Map<String, Object> map);
	
	// estimate (상세 페이지)
	public Estimate getEstimateArticle(String ep_code);
	
	// estimate 수정 처리
	public int updateEstimate(Estimate vo);
	
	
	// ------ salePlan (계획 관리)
	// salePlan 게시글 갯수 구하기
	public int getSaleCnt();
	
	// salePlan (판매 계획 관리 목록)
	public List<SalePlan> getsaleplan(Map<String, Object> map);
	
	// salePlan 게시글 상세 조회, 게시글 수정을 위한 상세 페이지
	public SalePlan getSaleplanArticle(String saleplan_code);
	
	// salePlan 게시물 수정 처리
	public int updatesalePlan(SalePlan vo);
	
	// salePlan 게시물 삭제 처리
	public int deletesalePlan(String saleplan_code);
	
	
	

}
