package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.FT_DAO;

@Service
public class FT_ServiceImpl implements FT_Service{
	
	
	@Autowired 
	FT_DAO dao;
	

	@Override
	public void FT_applyinput(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
		dao.FT_applyinput();
		
	}

}
