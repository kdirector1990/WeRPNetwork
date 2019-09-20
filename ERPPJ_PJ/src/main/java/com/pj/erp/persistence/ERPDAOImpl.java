package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Repository;

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
	public void nfc(String nfcid) {
		sqlSession.insert("com.pj.erp.persistence.ERPDAO.nfc",nfcid); 
	}

	//NFC를 통해  username 가져오기
	@Override
	public HR_nfc_log selectNfc(String nfc_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.selectNfc", nfc_code);
		
	}
	
}
