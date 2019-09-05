package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.pj.erp.vo.HR_PhysicalVO;
import com.pj.erp.vo.HR_GreetingVO;
import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_VO;

@Repository
public class HR_DAOImpl implements HR_DAO{

	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public int insertMember(HR_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertMember", vo);
	}
	
	@Override
	public int insertMember2(HR_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertMember2", vo);
	}
	
	@Override
	public int insertPhysical(HR_PhysicalVO vo) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertPhysical", vo);
	}
	
	@Override
	public int insertAuth() {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertAuth");
	}

	//호봉테이블 (직급)
	@Override
	public List<HR_RankVO> rank() {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.rank");
		
	}

	//호봉테이블 (금액)
	@Override
	public List<HR_PaystepVO> pay(String rank) {
		
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.pay", rank);
	}
	
	//호봉테이블(금액수정)
	@Override
	public int updatePay(HR_PaystepVO vo) {
		return sqlSession.update("com.pj.erp.persistence.HR_DAO.updatePay", vo);
	}

	@Override
	public int insertDepartment(Map<String, Object> map) {		
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertDepartment", map);
	}

	@Override
	public List<HR_GreetingVO> getGreeting(Map<String, Object> map) {
		
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.getGreeting", map);
	}
	
	public List<HR_VO> getDepartmentList(Map<String, Object> map) {
		List<HR_VO> dep = null;
		HR_DAO dao = sqlSession.getMapper(HR_DAO.class);
		dep = dao.getDepartmentList(map);
		return dep;
	}

	@Override
	public List<HR_VO> getPositionList(Map<String, Object> map) {
		List<HR_VO> poi = null;
		HR_DAO dao = sqlSession.getMapper(HR_DAO.class);
		poi = dao.getPositionList(map);
		return poi;
	}

	@Override
	public List<HR_VO> getRankList(Map<String, Object> map) {
		List<HR_VO> rank = null;
		HR_DAO dao = sqlSession.getMapper(HR_DAO.class);
		rank = dao.getRankList(map);
		return rank;
	}

	

	

}
