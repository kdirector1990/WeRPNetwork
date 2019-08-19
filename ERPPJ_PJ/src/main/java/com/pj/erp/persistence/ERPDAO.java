package com.pj.erp.persistence;

import java.util.Map;


public interface ERPDAO {
	
	public int insertMember(Map<String, Object> map);
	
	public int insertAuth();
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);

}
