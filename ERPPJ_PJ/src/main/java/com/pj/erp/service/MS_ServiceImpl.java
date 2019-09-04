package com.pj.erp.service;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		System.out.println(req.getParameter("plan_startdate"));
		System.out.println(req.getParameter("plan_enddate"));
		
		MS_VO vo = new MS_VO();
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(new Timestamp(System.currentTimeMillis()));
		vo.setPlan_startdate(Date.valueOf(req.getParameter("plan_startdate")));
		vo.setPlan_enddate(Date.valueOf(req.getParameter("plan_enddate")));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		
		int insertCnt = dao.insertPlan(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	@Override
	public void selectPlan(HttpServletRequest req, Model model) {
		int cnt = 0; 			//글의 갯수
		
		cnt = dao.getPlanListCnt();
		
		System.out.println("cnt : "+ cnt);
		
		List<MS_VO> dto = dao.getPlanList();
		model.addAttribute("dto", dto);
	}

	// 기획서 수정
	@Override
	public void updatePlan(HttpServletRequest req, Model model) {
		
		System.out.println("test Plan_code : "+ req.getParameter("Plan_code"));
		
		MS_VO vo = new MS_VO();
		vo.setPlan_code(req.getParameter("Plan_code"));
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(new Timestamp(System.currentTimeMillis()));
		vo.setPlan_startdate(Date.valueOf(req.getParameter("plan_startdate")));
		vo.setPlan_enddate(Date.valueOf(req.getParameter("plan_enddate")));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		
		int updateCnt = dao.updatePlan(vo);
		
		model.addAttribute("updateCnt", updateCnt);
	}

	//기획서 상세
	@Override
	public void detailPlan(HttpServletRequest req, Model model) {
		String plan_code = req.getParameter("Plan_code");
		
		MS_VO vo = dao.getDetailPlan(plan_code);
	}
}
