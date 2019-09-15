package com.pj.erp.persistence;

import java.util.List;

import com.pj.erp.vo.MF.MF_material;
import com.pj.erp.vo.MF.MF_plan;
import com.pj.erp.vo.MF.MF_product_list;

public interface MF_DAO {
	
	//자재등록
	public int insertMF(MF_material vo);
	
	//자재목록가져오기
	public List<MF_material> getMaterialList();
	
	//자재목록갯수
	public int getMaterialListCnt();
	
	//자재목록수정
	public int updateMF(MF_material vo);
	
	//자재목록삭제
	public int deleteMaterial(String material_code);
	
	//생산계획등록
	public int insertMFplan(MF_plan vo);
	
	//생산계획목록가져오기
	public List<MF_plan> getMFplanList(); 
	
	//제품검색
	public int selectProName(String product_name);
	
	//제품목록
	public List<MF_product_list> getProductList(String product_name);
	
}
