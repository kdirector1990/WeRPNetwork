package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.ST.CustomerList;
import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.ProductList;
import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.ST_searchProductCode;
import com.pj.erp.vo.ST.ST_searchUsername;
import com.pj.erp.vo.ST.ST_searchCustomerCode;
import com.pj.erp.vo.ST.ST_searchDepartmentCode;
import com.pj.erp.vo.ST.SaleList;
import com.pj.erp.vo.ST.SalePlan;
import com.pj.erp.vo.ST.UserName;

public interface ST_DAO {

	// estimate_price 게시글 갯수 구하기
	public int getestimateCnt();
	
	// estimdate 견적 등록
	public int estimatewritePro(Estimate vo);

	// estimate_price (견적 글 목록)
	public List<Estimate> getestimate(Map<String, Object> map);
	
	// estimate 검색 결과
	public List<Estimate> getEstimateresult(Map<String, Object> map);

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
	
	// salePlan 게시물 등록 
	public int writeSalePlan(SalePlan vo);
	
	// salePlan 검색
	public List<SalePlan> getSalePlanResult(Map<String, Object> map);
	
	// ------ ST_release (출고 관리)
	// release 게시글 갯수 구하기
	public int getReleaseCnt();
	
	// ST_release
	public List<Release> getreleaseResult(Map<String, Object> map);
	
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
	
	
	// ST_saleList (판매 관리)
	// saleList 등록
	public int insertsaleList(SaleList vo);
	
	// saleList 게시글 조회
	public int getSaleListCnt();
	
	// saleList 검색
	public List<SaleList> getSaleList(Map<String, Object> map);
	
	// saleList 게시글 목록 조회
	public List<SaleList> getSaleListArticle(Map<String, Object> map);
	
	// saleList 게시글 상세 조회 
	public SaleList getsaleListForm(String salelist_code);
	
	// saleList 게시글 수정
	public int updateSaleList(SaleList vo);
	
	// saleList 게시글 삭제
	public int deleteSaleList(String salelist_code);
	
	
	
	
	// 제품명 검색 확인
	public int selectProduct(String product_name);
	
	// 검색 목록 가져오기
	public List<ProductList> getProductList(String product_name);
	
	// 거래처명 검색 확인
	public int selectCustomer(String customer_name);
	
	// 거래처명 검색 목록 가져오기
	public List<CustomerList> getCustomerList(String customer_name);
	
	// 사원 이름 검색 확인
	public int selectName(String username);
	
	// 사원 검색 목록 불러오기
	public List<UserName> getUsernameList(String username); 
	
	

	//매출 - 고객
	public List<ST_searchCustomerCode> getCustomerCode(Map<String, Object> map);
	
	//매출 - 품목
	public List<ST_searchProductCode> getProCode(Map<String, Object> map);
	
	//매출 - 담당자
	public List<ST_searchUsername> getUsername(Map<String, Object> map);
	
	//매출 - 부서
	public List<ST_searchDepartmentCode> getDepartmentCode(Map<String, Object> map);
	
	
}
