package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.MS.MS_plan;

//경영지원
@Repository
public class MS_DAOImpl implements MS_DAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//기획서 등록
	@Override
	public int insertPlan(MS_plan vo) {
		return sqlSession.insert("com.pj.erp.persistence.MS_DAO.insertPlan", vo);
	}

	//기획서 조회
	@Override
	public List<MS_plan> getPlanList(String username) {
		return sqlSession.selectList("com.pj.erp.persistence.MS_DAO.getPlanList", username);
	}

	//기획서 상세조회
	@Override
	public MS_plan getPlanDetail(String plan_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.MS_DAO.getPlanDetail", plan_code);
	}
	
	//기획서 수정
	@Override
	public int updatePlan(MS_plan vo) {
		return sqlSession.update("com.pj.erp.persistence.MS_DAO.updatePlan", vo);
	}

	//기획서 삭제
	@Override
	public int deletePlan(String plan_code) {
		return sqlSession.delete("com.pj.erp.persistence.MS_DAO.deletePlan", plan_code);
	}

	// 사원이름 검색 확인
	@Override 
	public int selectEname(String e_name) {
		return sqlSession.selectOne("com.pj.erp.persistence.MS_DAO.selectEname", e_name); 
	}

	//검색 목록 가져오기
	@Override
	public List<HR_VO> getUsernameList(String e_name) {
		return sqlSession.selectList("com.pj.erp.persistence.MS_DAO.getUsernameList", e_name);
	}


}
