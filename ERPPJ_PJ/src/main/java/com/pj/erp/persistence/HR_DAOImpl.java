package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.pj.erp.vo.HR_PhysicalVO;
import com.pj.erp.vo.HR_FamilyVO;
import com.pj.erp.vo.HR_GreetingVO;
import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_SalaryVO;
import com.pj.erp.vo.HR_Time_VO;
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.HR_YearService_VO;

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
	public int insertPhysical(String username) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertPhysical", username);
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
	
	@Override
	public List<HR_SalaryVO> getSalary(Map<String, Object> map) {
		
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.getSalary", map);
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
	
	/*
	@Override
	public int userChk(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.userChk", username);
	}
	*/
	
	@Override
	public String getUsername() {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.getUsername");
	}

	@Override
	public int insertFamily(HR_FamilyVO vo2) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.insertFamily", vo2);
	}

	@Override
	public List<HR_VO> foundation() {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.foundation");
	}
	
	@Override
	public HR_VO getFoundation(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.getFoundation", username);
	}
	
	@Override
	public List<HR_PhysicalVO> physicalyList() {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.physicalyList");
	}
	
	@Override
	public HR_PhysicalVO physicaly(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.physicaly");
	}

	@Override
	public HR_PhysicalVO getPhysicaly(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.getPhysicaly", username);
	}

	@Override
	public int updatePhysicaly(HR_PhysicalVO vo) {
		return sqlSession.update("com.pj.erp.persistence.HR_DAO.updatePhysicaly", vo);
	}

	@Override
	public int updateFoundation(HR_VO vo) {
		return sqlSession.update("com.pj.erp.persistence.HR_DAO.updateFoundation", vo);
	}

	@Override
	public List<HR_VO> getUsers(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.getUsers", map);
	}

	@Override
	public List<HR_PhysicalVO> getPhysicaly(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.getPhysicaly", map);
	}

	//근태(사원정보 검색)
	@Override
	public List<HR_Time_VO> selectUserTime(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.selectUserTime", map);
	}

	//근태(출근입력)
	@Override
	public int StartWork(String username) {
		return sqlSession.insert("com.pj.erp.persistence.HR_DAO.StartWork", username);
	}

	//근태(퇴근입력)
	@Override
	public int EndWork(String username) {
		return sqlSession.update("com.pj.erp.persistence.HR_DAO.EndWork", username);
	}
	
	// 가족정보 가져오기
	@Override
	public HR_FamilyVO getFamily(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.HR_DAO.getFamily", username);
	}

	@Override
	public List<HR_YearService_VO> getYearofservice(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.getYearofservice", map);
	}	

	

}
