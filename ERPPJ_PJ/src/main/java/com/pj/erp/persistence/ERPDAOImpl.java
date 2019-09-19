package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Repository;

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
	
}
