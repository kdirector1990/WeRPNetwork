package com.pj.erp.persistence;

import java.util.List;

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
}
