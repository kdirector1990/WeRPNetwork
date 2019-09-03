package com.pj.erp.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FT_DAOImpl implements FT_DAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int FT_AccInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_AccInsert",map);
	}
	
	public int FT_applyinput() {
		// TODO Auto-generated method stub
		return 0;
	}
}
