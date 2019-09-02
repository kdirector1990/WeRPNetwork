package com.pj.erp.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.MS_DAO;
import com.pj.erp.vo.MS_VO;

// 경영지원
@Service
public class MS_ServiceImpl implements MS_Service {

	@Autowired
	MS_DAO dao;
	
	//기획서등록
	@Override
	public void insertPlan(HttpServletRequest req, Model model) {
		
		MS_VO vo = new MS_VO();
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(new Timestamp(System.currentTimeMillis()));
		vo.setPlan_startdate(Timestamp.valueOf(req.getParameter("plan_startdate")));
		vo.setPlan_enddate(Timestamp.valueOf(req.getParameter("plan_enddate")));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		
		int insertCnt = dao.insertPlan(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}

		
}
