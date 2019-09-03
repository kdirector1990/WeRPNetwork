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
import com.pj.erp.vo.MS_VO;

@Service
public class ERPServiceImpl implements ERPService{
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	ERPDAO dao;
	
	@Autowired
	HR_DAO dao2;
	
	Map<String, Object> map = new HashMap<String, Object>();

<<<<<<< HEAD

	//경영지원 - 기획서 등록
	@Override
	public void insertPlan(HttpServletRequest req, Model model) {
		MS_VO vo = new MS_VO();
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(Timestamp.valueOf(req.getParameter("plan_regdate")));
		vo.setPlan_startdate(Timestamp.valueOf(req.getParameter("plan_startdate")));
		vo.setPlan_enddate(Timestamp.valueOf(req.getParameter("plan_enddate")));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		
	}
	

	@Override
	public void testreg(HttpServletRequest req, Model model) {
		 
		String e_name = "1234";
		
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);
		map.put("password", password);
		map.put("e_name", e_name);
		
		dao2.insertMember(map);
		dao2.insertAuth();
		
		
		
	}
	
	

=======
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
}
