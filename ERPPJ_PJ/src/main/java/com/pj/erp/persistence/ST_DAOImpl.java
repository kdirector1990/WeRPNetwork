package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.SalePlan;

@Repository
public class ST_DAOImpl implements ST_DAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	// estimate (견적 글 목록)
	@Override
	public List<Estimate> getestimate(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getestimate", map);
	}
	
	// salePlan (판매 계획 관리 목록)
	@Override
	public List<SalePlan> getsaleplan(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ST_DAO.getsaleplan", map);
	}
	
	@Override
	public int getSaleCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.ST_DAO.getSaleCnt");
	}
	

}
