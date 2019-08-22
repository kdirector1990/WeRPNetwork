package com.pj.erp.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.HR_DAO;

@Service
public class HR_ServiceImpl implements HR_Service{

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	HR_DAO dao;
	
	Map<String, Object> map = new HashMap<String, Object>();
	
	@Override
	public void inputHRPro(HttpServletRequest req, Model model) {
		
		String pw = "1234";
		String e_picture = req.getParameter("e_picture");
		String e_name = req.getParameter("e_name");
		String e_gender = req.getParameter("e_gender");
		String e_type = req.getParameter("e_type");
		String e_code = req.getParameter("e_code");
		String e_hp = req.getParameter("e_hp");
		String e_address1 = req.getParameter("e_address1");
		String e_address2= req.getParameter("e_address2");
		String e_nfcCodeNFC= req.getParameter("e_nfcCodeNFC");
		String e_disability_type= req.getParameter("e_disability_type");
		String e_disability_level= req.getParameter("e_disability_level");
		String e_height= req.getParameter("e_height");
		String e_weight= req.getParameter("e_weight");
		String e_left_sight= req.getParameter("e_left_sight");
		String e_right_sight= req.getParameter("e_right_sight");
		String e_color_blind= req.getParameter("e_color_blind");
		String e_blood_type= req.getParameter("e_blood_type");
		String e_blood_pressure1= req.getParameter("e_blood_pressure1");
		String e_blood_pressure2= req.getParameter("e_blood_pressure2");
		
		
		System.out.println(e_picture);
		System.out.println(e_name);
		System.out.println(e_gender);
		System.out.println(e_type);
		System.out.println(e_code);
		System.out.println(e_hp);
		System.out.println(e_address1);
		System.out.println(e_address2);
		System.out.println(e_nfcCodeNFC);
		System.out.println(e_disability_type);
		System.out.println(e_disability_level);
		System.out.println(e_height);
		System.out.println(e_weight);
		System.out.println(e_left_sight);
		System.out.println(e_right_sight);
		System.out.println(e_color_blind);
		System.out.println(e_blood_type);
		System.out.println(e_blood_pressure1);
		System.out.println(e_blood_pressure2);
		
		
		
		
		//String password = passwordEncoder.encode(pw);
		//System.out.println(e_name);
		//map.put("password", password);
		//map.put("e_name", e_name);
		
		//dao.insertMember(map);
		//dao.insertAuth();
		
		
		
	}
}
