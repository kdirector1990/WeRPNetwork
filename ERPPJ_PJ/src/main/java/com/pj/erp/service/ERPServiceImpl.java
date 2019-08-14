package com.pj.erp.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.ERPDAO;

@Service
public class ERPServiceImpl implements ERPService{
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	ERPDAO dao;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public void inputHRPro(HttpServletRequest req, Model model) {
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for(int i = 0 ; i < 6 ; i ++) {
			int rIndex = rnd.nextInt(2);
			switch(rIndex) {
			case 0 : 
				temp.append((char)((int)(rnd.nextInt(26)) + 65));
				break;
			case 1 : 
				temp.append(rnd.nextInt(10));
				break;
			}
		}
		String bpassword = temp.toString();
		System.out.println(bpassword);
		String password = passwordEncoder.encode(bpassword);
		
		String e_name = req.getParameter("e_name");
		System.out.println(e_name);
		map.put("password", password);
		map.put("e_name", e_name);
		
		dao.insertMember(map);
		dao.insertAuth();
		
		
		
	}

}
