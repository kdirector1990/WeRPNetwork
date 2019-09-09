package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_RP_VO;
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

	//고정자산 수정
	@Override
	public int updateCT(CT_VO vo) {
		return sqlSession.update("com.pj.erp.persistence.CT_DAO.updateCT", vo);
	}

	//고정자산 폐기처리
	@Override
	public int deleteCT(CT_VO vo) {
		return sqlSession.update("com.pj.erp.persistence.CT_DAO.deleteCT", vo);
	}

	//AS등록
	@Override
	public int insertAS(CT_AS_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.CT_DAO.insertAS", vo);
	}

	//AS 목록 가져오기
	@Override
	public CT_AS_VO selectAS(int state) {
		return sqlSession.selectOne("com.pj.erp.persistence.CT_DAO.selectAS", state);
	}

	//AS 목록 가져오기(준선이형 버전)
	@Override
	public List<CT_AS_VO> selectAS2(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.CT_DAO.selectAS2", map);
	}
	
	//AS 목록 코드로 가져오기
	@Override
	public CT_AS_VO selectAScode(String cas_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.CT_DAO.selectAScode", cas_code);
	}
	
	//AS 시작
	@Override
	public int updateAS(String cas_code) {
		return sqlSession.update("com.pj.erp.persistence.CT_DAO.updateAS", cas_code);
	}
	
	//AS 처리완료
	@Override
	public int completeAS(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.CT_DAO.completeAS", map);
	}


	//수리일지 부서코드를 통한 전산설비 갯수
	@Override
	public int selectCEQ(String part) {
		return sqlSession.selectOne("com.pj.erp.persistence.CT_DAO.selectCEQ", part);
	}

	//수리일지 부서코드를 통한 전산설비리스트 가져오기
	@Override
	public List<CT_VO> selectCeqS(String part) {
		return sqlSession.selectList("com.pj.erp.persistence.CT_DAO.selectCeqS", part);
	}

	//수리일지 등록
	@Override
	public int InsertRP(CT_RP_VO rp) {
		return sqlSession.insert("com.pj.erp.persistence.CT_DAO.InsertRP", rp);
	}


	


	

}
