package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.pj.erp.vo.HR_PhysicalVO;
=======
import com.pj.erp.vo.HR_PaystepVO;
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
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
<<<<<<< HEAD
	
=======

	//호봉테이블 (돈)
	@Override
	public List<HR_PaystepVO> pay(String rank) {
		
		return sqlSession.selectList("com.pj.erp.persistence.HR_DAO.pay", rank);
	}
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
}
