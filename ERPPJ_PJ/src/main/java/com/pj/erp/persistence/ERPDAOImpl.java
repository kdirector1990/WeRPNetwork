package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.BlockChainVO;
import com.pj.erp.vo.MaterialVO;
import com.pj.erp.vo.ProductVO;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.HR.HR_nfc_log;

@Repository
public class ERPDAOImpl implements ERPDAO{
	
	@Autowired
	private SqlSession sqlSession;

	
	
	@Override
	public Map<String, Object> loginCheck(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.loginCheck",username);
	}

	@Override
	public Map<String, Object> authCheck(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.authCheck",username);
	}
	
	@Override
	public int nfc(String nfcid) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.nfc",nfcid); 
	}

	//NFC를 통해  username 가져오기
	@Override
	public HR_nfc_log selectNfc(String nfc_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.selectNfc", nfc_code);
		
	}
	
	@Override
	public BlockChainVO getGroupCode(String department_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.getGroupCode", department_code);
	}

	// 구매할 때 필요한 목록
	@Override
	public List<MaterialVO> getMaterialList() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getProductList");
	}
	
	@Override
	public int insertLog(HashVO vo) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.insertLog", vo);
	}

	@Override
	public List<HashVO> selectHashDept(String department_code) {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.selectHashDept", department_code);
	}

	//물품판매목록
	@Override
	public List<ProductVO> getProductList() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getProductList");
	}

	//물품 상세페이지
	@Override
	public ProductVO gerProductDetail(String product_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.gerProductDetail", product_code);
	}
}
