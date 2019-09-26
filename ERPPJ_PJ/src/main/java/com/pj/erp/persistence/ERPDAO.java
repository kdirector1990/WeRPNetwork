package com.pj.erp.persistence;

import java.util.Map;

import com.pj.erp.vo.BlockChainVO;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.HR.HR_nfc_log;


public interface ERPDAO {
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);
 
	public int nfc(String nfcid);
	
	public HR_nfc_log selectNfc(String nfc_code); 

	// 블록체인 쓰기 위한  department_group_code 가져오기
	public BlockChainVO getGroupCode(String department_code);
	
	// 블록체인 hash블록 DB에 담음.
	public HashVO insertLog();
}
