package com.pj.erp.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.MF_VO;

@Repository
public class MF_DAOImpl implements MF_DAO {
	
	@Autowired
	private SqlSession sqlSession;
/*
	//자재등록
	@Override
	public int insertMF(MF_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.MF_DAO.insertMF", vo);
	}
	
	*/
}
