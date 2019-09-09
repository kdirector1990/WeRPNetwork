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
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.MS.MS_plan;

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
		
		MS_plan vo = new MS_plan();
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(new Timestamp(System.currentTimeMillis()));
		vo.setPlan_startdate(req.getParameter("plan_startdate"));
		vo.setPlan_enddate(req.getParameter("plan_enddate"));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		
		int insertCnt = dao.insertPlan(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	//기획서 목록가져오기
	@Override
	public void selectPlan(HttpServletRequest req, Model model) {
		int cnt = 0; 			//글의 갯수
		
		cnt = dao.getPlanListCnt();
		
		System.out.println("cnt : "+ cnt);
		
		List<MS_plan> dto = dao.getPlanList();
		model.addAttribute("dto", dto);
	}

	// 기획서 수정
	@Override
	public int updatePlan(HttpServletRequest req, Model model) {
		
		MS_plan vo = new MS_plan();
		vo.setPlan_code(req.getParameter("plan_code"));
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_startdate(req.getParameter("plan_startdate"));
		vo.setPlan_enddate(req.getParameter("plan_enddate"));
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		vo.setPlan_proposal(req.getParameter("plan_proposal"));
		
		System.out.println(vo.getPlan_code());
		System.out.println(vo.getPlan_name());
		System.out.println(vo.getUsername());
		System.out.println(vo.getPosition_code());
		System.out.println(vo.getPlan_startdate());
		System.out.println(vo.getPlan_enddate());
		System.out.println(vo.getPlan_state());
		System.out.println(vo.getPlan_objective());
		System.out.println(vo.getPlan_proposal());
		
		int updateCnt = dao.updatePlan(vo);
		
		return updateCnt;
	}

	//기획서 삭제
	@Override
	public int deletePlan(HttpServletRequest req, Model model) {
		String plan_code = req.getParameter("plan_code");
		
		int deleteCnt = dao.deletePlan(plan_code);
		return deleteCnt;
	}

	//e_name(사원명)으로 username 찾기
	@Override
	public void searchUsername(HttpServletRequest req, Model model) {
		String e_name = req.getParameter("e_name");
		
		System.out.println("e_name : " + e_name); 
		int cnt = dao.selectEname(e_name); 
		
		System.out.println("cnt: "+cnt);
		if(cnt > 0) {
			List<HR_VO> dto = dao.getUsernameList(e_name);
			model.addAttribute("dto", dto);
		}

		model.addAttribute("cnt", cnt);
		System.out.println("e_name : " + e_name);
	}

}
