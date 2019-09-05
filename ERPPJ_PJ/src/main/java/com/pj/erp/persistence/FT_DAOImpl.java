package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Subject;

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

	// 적금 가져오기
	@Override
	public List<FT_Savings> FT_SavingsSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_SavingsSelect");
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

	// 예금 가져오기
	@Override
	public List<FT_Savings> FT_DepositSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DepositSelect");
	}
	
	// 예금 키 가져오기
	@Override
	public String FT_DepositKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DepositKeySelect");
	}

	// 예금추가
	@Override
	public int FT_DepositPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_DepositPrevInsert",map);
	}

	@Override
	public int FT_DepositInsert(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_DepositInsert",map);
		} else {
			return 0;
		}
	}

	// 예금수정
	@Override
	public int FT_DepositPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_DepositPrevUpdate",map);
	}

	@Override
	public int FT_DepositUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_DepositUpdate",map);
		} else {
			return 0;
		}
	}
	
	// 계정과목 가져오기
	@Override
	public List<FT_Subject> FT_SubjectSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_SubjectSelect");
	}
	
	// 거래처 가져오기
	@Override
	public List<FT_Account> FT_AccountSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_AccountSelect");
	}
}
