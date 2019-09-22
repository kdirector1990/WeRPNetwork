package com.pj.erp.persistence;

import java.util.Map;

import com.pj.erp.vo.HR.HR_nfc_log;


public interface ERPDAO {
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);
	
<<<<<<< HEAD
	public int nfc(String nfcid);
=======
	public void nfc(String nfcid);
	
	public HR_nfc_log selectNfc(String nfc_code);
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git

}
