package com.pj.erp.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.CT.CT_VO;

@Repository
public class CT_DAOImpl implements CT_DAO{
	
	@Autowired
	private SqlSession sqlSession;

	//고정자산 입력
	@Override
	public int InsertCT(CT_VO vo) {

		return sqlSession.insert("com.pj.erp.persistence.CT_DAO.InsertCT", vo);
	}

}
