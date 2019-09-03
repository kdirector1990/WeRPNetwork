package com.pj.erp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.erp.persistence.FT_DAO;

@Service
public class FT_ServiceImpl {
	
	@Autowired
	FT_DAO dao;

}
