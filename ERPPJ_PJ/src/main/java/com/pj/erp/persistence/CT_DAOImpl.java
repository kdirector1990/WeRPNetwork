package com.pj.erp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.CT.CT_VO;
import com.pj.erp.vo.FT.FT_Detail_ac;

@Repository
public class CT_DAOImpl implements CT_DAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//상세계정 등록
	@Override
	public int InsertAC(FT_Detail_ac ac) {
		return sqlSession.insert("com.pj.erp.persistence.CT_DAO.InsertAC", ac);
	}

	//고정자산 입력
	@Override
	public int InsertCT(CT_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.CT_DAO.InsertCT", vo);
	}
	
	//고정자산 목록 갯수 구하기
	@Override
	public int selectCTcnt(String type) {
		return sqlSession.selectOne("com.pj.erp.persistence.CT_DAO.selectCTcnt", type);
	}
	

	//고정자산 목록 가져오기(type)
	@Override
	public List<CT_VO> SelectCT(String type) {
		return sqlSession.selectList("com.pj.erp.persistence.CT_DAO.SelectCT", type);
	}

	//고정자산 목록 가져오기(code)
	@Override
	public CT_VO selectCode(String code) {
		return sqlSession.selectOne("com.pj.erp.persistence.CT_DAO.SelectCode", code);
	}

	

}
