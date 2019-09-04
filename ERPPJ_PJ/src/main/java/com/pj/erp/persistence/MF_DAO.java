package com.pj.erp.persistence;

import java.util.List;

import com.pj.erp.vo.MF.MF_material;

public interface MF_DAO {
	
	//자재등록
	//public int insertMF(MF_material vo);
	
	//자재목록가져오기
	public List<MF_material> getMaterialList();
	
	//자재목록갯수
	public int getMaterialListCnt();
}
