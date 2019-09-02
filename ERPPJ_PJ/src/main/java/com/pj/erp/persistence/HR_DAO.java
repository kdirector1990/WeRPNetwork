package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

<<<<<<< HEAD
import com.pj.erp.vo.HR_PhysicalVO;
=======
import com.pj.erp.vo.HR_PaystepVO;
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_VO;

public interface HR_DAO {

	public int insertMember(HR_VO vo);
	
	public int insertPhysical(HR_PhysicalVO vo);
	
	public int insertAuth();
	
	//호봉테이블 직급 가져오기
	public List<HR_RankVO> rank();
	
	//호봉테이블 호봉금액 가져오기
	public List<HR_PaystepVO> pay(String rank);
}
