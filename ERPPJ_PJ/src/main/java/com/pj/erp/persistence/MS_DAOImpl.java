package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.MS_VO;

//경영지원
@Repository
public class MS_DAOImpl implements MS_DAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//기획서 등록
	@Override
	public int insertPlan(MS_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.MS_DAO.insertPlan", vo);
	}

	//기획서 조회
	@Override
	public List<MS_VO> getPlanList() {
		return sqlSession.selectList("com.pj.erp.persistence.MS_DAO.getPlanList");
	}

	//기획서 목록 갯수
	@Override
	public int getPlanListCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.MS_DAO.getPlanListCnt");
	}

	//기획서 수정
	@Override
	public int updatePlan(MS_VO vo) {
		return sqlSession.update("com.pj.erp.persistence.MS_DAO.updatePlan", vo);
	}

	//기획서 상세
	@Override
	public MS_VO getDetailPlan(String plan_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.MS_DAO.getDetailPlan", plan_code);
	}
}
