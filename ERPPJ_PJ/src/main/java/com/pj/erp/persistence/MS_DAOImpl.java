package com.pj.erp.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.pj.erp.vo.MS_VO;

//경영지원
public class MS_DAOImpl implements MS_DAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertPlan(MS_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.MS_DAO.insertPlan", vo);
	}
}
