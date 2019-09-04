package com.pj.erp.service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.persistence.HR_DAO;
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.MS.MS_plan;

@Service
public class ERPServiceImpl implements ERPService{
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	ERPDAO dao;
	
	@Autowired
	HR_DAO dao2;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public void testreg(HttpServletRequest req, Model model) {
		
		HR_VO vo = new HR_VO();
		String e_name = "1234";
		
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);
		vo.setPassword(password);
		vo.setE_name(e_name);
		
		dao2.insertMember2(vo);
		dao2.insertAuth();
		
		
		
	}
	
	
}
