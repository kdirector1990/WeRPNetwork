package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.BlockChainVO;
import com.pj.erp.vo.ProductVO;
import com.pj.erp.vo.HR.HR_nfc_log;
import com.pj.erp.vo.MF.MF_material;

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
	public List<ProductVO> getProductList() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getProductList");
	}
	
}
