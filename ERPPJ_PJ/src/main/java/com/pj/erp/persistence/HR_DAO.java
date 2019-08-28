package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.HR_RankVO;

public interface HR_DAO {

	public int insertMember(Map<String, Object> map);
	
	public int insertAuth();
	
	public List<HR_RankVO> rank();
}
