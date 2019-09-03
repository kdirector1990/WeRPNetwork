package com.pj.erp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.erp.persistence.FT_DAO;

@Service
public class FT_ServiceImpl implements FT_Service{

	@Autowired 
	FT_DAO dao;
	
	@Override
	public void FT_ACCInsert(Map<String, Object> map) {
		int insertCnt = dao.FT_AccInsert(map);
		
		
	}

}
