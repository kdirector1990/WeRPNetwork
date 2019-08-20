package com.pj.erp.service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.vo.PlanVO;

@Service
public class ERPServiceImpl implements ERPService{
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	ERPDAO dao;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public void inputHRPro(HttpServletRequest req, Model model) {
		
		
		String e_name = req.getParameter("e_name");
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);
		map.put("password", password);
		map.put("e_name", e_name);
		
		dao.insertMember(map);
		dao.insertAuth();
		
		
		
	}

	//경영지원 - 기획서 등록
	@Override
	public void insertPlan(HttpServletRequest req, Model model) {
		
	}
	
	

}
