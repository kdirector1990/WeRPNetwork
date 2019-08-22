package com.pj.erp.persistence;

import java.util.Map;

public interface HR_DAO {

	public int insertMember(Map<String, Object> map);
	
	public int insertAuth();
}
