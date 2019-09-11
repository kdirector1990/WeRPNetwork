package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_Depart_VO;
import com.pj.erp.vo.CT.CT_RP_VO;
import com.pj.erp.vo.CT.CT_VO;
import com.pj.erp.vo.FT.FT_Detail_ac;

public interface CT_DAO {
	
	//부서코드 부서이름 가져오기
	public List<CT_Depart_VO> selectDP();

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
	
	//AS 목록 상태로 가져오기
	public CT_AS_VO selectAS(int state);
	
	//AS 목록 가져오기(준선이형버전)
	public List<CT_AS_VO> selectAS2(Map<String,Object> map);
	
	//AS 목록 코드로 가져오기
	public CT_AS_VO selectAScode(String cas_code);
	
	//AS 수리시작
	public int updateAS(String cas_code);
	
	//AS 처리완료
	public int completeAS(Map<String, Object> map);
	
	//수리일지 부서 검색 갯수
	public int selectCEQ(String part);
	
	//수리일지 부서 검색
	public List<CT_VO> selectCeqS(String part);
	
	//수리일지 등록
	public int InsertRP(CT_RP_VO rp);
	
	//수리일지 타입으로 select
	public List<CT_RP_VO> selectRPC(String type);

	//수리일지 가져오기
	public CT_RP_VO updateFormRP(String code);
	
	//수리완료
	public int updateRP(CT_RP_VO vo);
	
	//수리일지 폐기
	public int deleteRP(String code);
	
	//수리일지 폐기목록 가져오기
	public List<CT_RP_VO> delRpList(Map<String, Object> map) throws java.text.ParseException;
	
	//수리일지 폐기취소
	public int RPdeleteRemove(String code);
	
}
