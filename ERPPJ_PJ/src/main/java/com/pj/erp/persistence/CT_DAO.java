package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_RP_VO;
import com.pj.erp.vo.CT.CT_VO;
import com.pj.erp.vo.FT.FT_Detail_ac;

public interface CT_DAO {

	//상세계정 테이블 입력
	public int InsertAC(FT_Detail_ac ac);

	//고정자산 입력
	public int InsertCT(CT_VO vo);
	
	//고정자산 목록 갯수 
	public int selectCTcnt(String type);
	
	//고정자산 select(type)
	public List<CT_VO> SelectCT(String type);
	
	//고정자산 select(code)
	public CT_VO selectCode(String code);
	
	//고정자산 update
	public int updateCT(CT_VO vo);
	
	//고정자산 폐기처리
	public int deleteCT(CT_VO vo);
	
	//AS 등록
	public int insertAS(CT_AS_VO vo);
	
	//AS 목록 갯수
	public List<CT_AS_VO> selectAS(CT_AS_VO vo);
	
	//AS 목록 갯수2
	public List<CT_AS_VO> selectAS2(Map<String,Object> map);
	
	//수리일지 부서 검색 갯수
	public int selectCEQ(String part);
	
	//수리일지 부서 검색
	public List<CT_VO> selectCeqS(String part);
	
	//수리일지 등록
	public int InsertRP(CT_RP_VO rp);
	
}
