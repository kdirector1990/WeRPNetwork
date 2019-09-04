package com.pj.erp.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FT_DAOImpl implements FT_DAO{
	
	@Autowired
	private SqlSession sqlSession;

	// 거래처 추가
	@Override
	public int FT_AccInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_AccInsert",map);
	}
	
	public int FT_applyinput() {
		// TODO Auto-generated method stub
		return 0;
	}

	// 적금 key 가져오기
	@Override
	public String FT_SavingsKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_SavingsKeySelect");
	}
	
	// 적금추가
	@Override
	public int FT_SavingsPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_SavingsPrevInsert",map);
	}
	
	@Override
	public int FT_SavingsInsert(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_SavingsInsert",map);
		} else {
			return 0;
		}
	}

	// 적금수정
	@Override
	public int FT_SavingsPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_SavingsPrevUpdate",map);
	}
	
	@Override
	public int FT_SavingsUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_SavingsUpdate",map);
		} else {
			return 0;
		}
	}
}
