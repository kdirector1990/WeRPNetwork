package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.ProductList;
import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.SalePlan;

public interface ST_DAO {

	// estimate_price 게시글 갯수 구하기
	public int getestimateCnt();
	
	// estimdate 견적 등록
	public int estimatewritePro(Estimate vo);

	// estimate_price (견적 글 목록)
	public List<Estimate> getestimate(Map<String, Object> map);

	// estimate_price (상세 페이지)
	public Estimate getEstimateArticle(String ep_code);

	// estimate_price 수정 처리
	public int updateEstimate(Estimate vo);

	// estimate_price 삭제 처리
	public int deleteEstimate(String ep_code);

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
	
	// ------ ST_release (출고 관리)
	// release 게시글 갯수 구하기
	public int getReleaseCnt();
	
	// release 게시글 목록 조회
	public List<Release> getReleaseList(Map<String, Object> map);
	
	// release 게시글 상세 조회
	public Release getReleaseArticle(String sar_code);
	
	// release 수정 처리 
	public int updateRelease(Release vo);
	
	// release 삭제 처리
	public int deleteRelease(String sar_code);
	
	// release 등록 처리
	public int insertRelease(Release vo);
	
	// 제품명 검색 확인
	public int selectProduct(String product_name);
	
	// 검색 목록 가져오기
	public List<ProductList> getProductList(String product_name);

}
