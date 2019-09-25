package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.ST.CustomerList;
import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.ProductList;
import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.ST_contrast;
import com.pj.erp.vo.ST.ST_department;
import com.pj.erp.vo.ST.ST_searchProductCode;
import com.pj.erp.vo.ST.ST_searchUsername;
import com.pj.erp.vo.ST.ST_searchCustomerCode;
import com.pj.erp.vo.ST.ST_searchDepartmentCode;
import com.pj.erp.vo.ST.SaleList;
import com.pj.erp.vo.ST.SalePlan;
import com.pj.erp.vo.ST.UserName;

@Repository
public class ST_DAOImpl implements ST_DAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int estimatewritePro(Estimate vo) {
		return sqlSession.insert("com.pj.erp.persistence.ST_DAO.estimatewritePro", vo);
	}
	
	// estimate_price 게시글 갯수 
	@Override
	public int getestimateCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getestimateCnt");
	}
	
	// estimate_price (견적 글 목록)
	@Override
	public List<Estimate> getestimate(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getestimate", map);
	}
	
	// estimate 검색 결과
	@Override
	public List<Estimate> getEstimateresult(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getEstimateresult", map);
	}
	
	// estimate_price (상세 페이지)
	@Override
	public Estimate getEstimateArticle(String ep_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getEstimateArticle", ep_code);
	}
	
	// estimate_price 수정 처리
	@Override
	public int updateEstimate(Estimate vo) {
		return sqlSession.update("com.pj.erp.persistence.ST_DAO.updateEstimate", vo);
	}
	
	// estimate_price
	@Override
	public int deleteEstimate(String ep_code) {
		return sqlSession.delete("com.pj.erp.persistence.ST_DAO.deleteEstimate", ep_code);
	}
	
	// ------ salePlan (판매 계획 관리)
	// salePlan (판매 계획 관리 목록)
	@Override
	public List<SalePlan> getsaleplan(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getsaleplan", map);
	}
	
	// salePlan 게시글 갯수 
	@Override
	public int getSaleCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getSaleCnt");
	}
	
	// saleplan 상세 페이지
	@Override
	public SalePlan getSaleplanArticle(String saleplan_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getSaleplanArticle", saleplan_code);
	}
	
	// saleplan 수정 처리
	@Override
	public int updatesalePlan(SalePlan vo) {
		return sqlSession.update("com.pj.erp.persistence.ST_DAO.updatesalePlan", vo);
	}
	
	// saleplan 삭제 처리
	@Override
	public int deletesalePlan(String saleplan_code) {
		return sqlSession.delete("com.pj.erp.persistence.ST_DAO.deletesalePlan", saleplan_code);
	}
	
	// salePlan 등록 처리
	@Override
	public int writeSalePlan(SalePlan vo) {
		return sqlSession.insert("com.pj.erp.persistence.ST_DAO.writeSalePlan", vo);
	}
	
	// salePlan 검색
	@Override
	public List<SalePlan> getSalePlanResult(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getSalePlanResult", map);
	}
	
	// ------ ST_release 출고 관리 
	// release 게시글 갯수
	@Override
	public int getReleaseCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getReleaseCnt");
	}
	
	// release 검색
	@Override
	public List<Release> getreleaseResult(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getreleaseResult", map);
	}
	
	// refund 검색
	@Override
	public List<Release> getrefundList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getrefundList", map);
	}
	
	// 출고 지연 검색 현황
	@Override
	public List<SaleList> getDelaystate(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getDelaystate", map);
	}
	
	// 출고 지연 검색 현황
	@Override
	public List<SaleList> getDelaystate2(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getDelaystate2", map);
	}
	
	// release 게시글 목록 조회
	@Override
	public List<Release> getReleaseList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getReleaseList", map);
	}
	
	// release 게시글 상세 조회
	@Override
	public Release getReleaseArticle(String sar_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getReleaseArticle", sar_code);
	}
	
	// release 수정 처리
	@Override
	public int updateRelease(Release vo) {
		return sqlSession.update("com.pj.erp.persistence.ST_DAO.updateRelease", vo);
	}
	
	// release 삭제 처리
	@Override
	public int deleteRelease(String sar_code) {
		return sqlSession.delete("com.pj.erp.persistence.ST_DAO.deleteRelease", sar_code);
	}
	
	// release 등록 처리
	@Override
	public int insertRelease(Release vo) {
		return sqlSession.insert("com.pj.erp.persistence.ST_DAO.insertRelease", vo);
	}
	
	// saleList 등록
	@Override
	public int insertsaleList(SaleList vo) {
		return sqlSession.insert("com.pj.erp.persistence.ST_DAO.insertsaleList", vo);
	}
	
	// saleList 게시글 갯수
	@Override
	public int getSaleListCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getSaleListCnt");
	}
	
	// 검색 결과
	@Override
	public List<SaleList> getSaleList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getSaleList",map);
	}
	
	// saleList 게시글 목록 조회
	@Override
	public List<SaleList> getSaleListArticle(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getSaleListArticle", map);
	}
	
	// saleList 게시글 상세 조회
	@Override
	public SaleList getsaleListForm(String salelist_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getsaleListForm", salelist_code);
	}
	
	// saleList 수정 처리
	@Override
	public int updateSaleList(SaleList vo) {
		return sqlSession.update("com.pj.erp.persistence.ST_DAO.updateSaleList", vo);
	}
	
	// saleList 삭제 처리
	@Override
	public int deleteSaleList(String salelist_code) {
		return sqlSession.delete("com.pj.erp.persistence.ST_DAO.deleteSaleList", salelist_code);
	}
	
	// ST_contrast 검색 조회
	@Override
	public List<ST_contrast> getContrast(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getContrast", map);
	}
	
	
	
	
	
	// 제품명 검색
	@Override
	public int selectProduct(String product_name) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.selectProduct", product_name);
	}
	
	// 검색 목록
	@Override
	public List<ProductList> getProductList(String product_name) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getProductList", product_name);
	}
	
	// 거래처명 검색 확인
	@Override
	public int selectCustomer(String customer_name) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.selectCustomer", customer_name);
	}
	
	// 검색 목록
	@Override
	public List<CustomerList> getCustomerList(String customer_name) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getCustomerList", customer_name);
	}

	// 사원 이름 검색 확인
	@Override
	public int selectName(String e_name) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.selectName", e_name);
	}
	
	// 사원 검색 목록
	@Override
	public List<UserName> getUsernameList(String username) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getUsernameList", username);
	}

	//매출 - 고객
	@Override
	public List<ST_searchCustomerCode> getCustomerCode(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getTotalSales", map);
	}
	
	//매출 - 품목
	@Override
	public List<ST_searchProductCode> getProCode(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getProCode", map);
	}

	//매출 - 담당자
	@Override
	public List<ST_searchUsername> getUsername(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getUsername", map);
	}

	//매출 - 부서
	@Override
	public List<ST_searchDepartmentCode> getDepartmentCode(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getDepartmentCode", map);
	}

	//팝업창 부서조회 목록 유무
	@Override
	public int selectDepName(String department_name) {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.selectDepName", department_name);
	}

	//팝업창 부서조회 목록
	@Override
	public List<ST_department> getDepartmentList(String department_name) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getDepartmentList", department_name);
	}
	

}
