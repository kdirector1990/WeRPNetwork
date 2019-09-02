package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.HR_PhysicalVO;
import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_VO;

public interface HR_DAO {

	public int insertMember(HR_VO vo);
	
	public int insertPhysical(HR_PhysicalVO vo);
	
	public int insertAuth();
	
	public List<HR_RankVO> rank();
}
