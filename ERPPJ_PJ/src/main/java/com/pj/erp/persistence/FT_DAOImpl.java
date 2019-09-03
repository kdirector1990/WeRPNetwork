package com.pj.erp.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FT_DAOImpl {
	
	@Autowired
	private SqlSession sqlSession;

}
