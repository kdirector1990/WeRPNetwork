package com.pj.erp.persistence;

import java.util.Map;

import com.pj.erp.vo.HR.HR_nfc_log;


public interface ERPDAO {
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);
	
	public void nfc(String nfcid);
	
	public HR_nfc_log selectNfc(String nfc_code);

}
