package com.pj.erp.persistence;

import java.util.Map;


public interface ERPDAO {
	
	
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);

}
