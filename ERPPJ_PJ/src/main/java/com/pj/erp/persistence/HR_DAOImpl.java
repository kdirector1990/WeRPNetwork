package com.pj.erp.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HR_DAOImpl implements HR_DAO{

	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public int insertMember(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertMember",map);
	}

	@Override
	public int insertAuth() {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertAuth");
	}
}
