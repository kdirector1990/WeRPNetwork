package com.pj.erp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.MF.MF_material;

@Repository
public class MF_DAOImpl implements MF_DAO {
	
	@Autowired
	private SqlSession sqlSession;
	/*
	//자재등록
	@Override
	public int insertMF(MF_material vo) {
		return sqlSession.insert("com.pj.erp.persistence.MF_DAO.insertMF", vo);
	}
	*/
	//자재목록가져오기
	@Override
	public List<MF_material> getMaterialList() {
		return sqlSession.selectList("com.pj.erp.persistence.MF_DAO.getMaterialList");
	}

	//자재목록갯수
	@Override
	public int getMaterialListCnt() {
		return sqlSession.selectOne("com.pj.erp.persistence.MF_DAO.getMaterialListCnt");
	}
}
