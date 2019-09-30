package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.vo.MS.MS_plan;

// 경영지원 
public interface MS_Service {

	//기획서 등록
	public int insertPlan(MultipartHttpServletRequest req, Model model);
	
	//기획서 조회
	public List<MS_plan> selectPlan(HttpServletRequest req, Model model);
	
	//상세조회
	public void selectPlanDetail(HttpServletRequest req, Model model);
	
	//기획서 수정
	public void updatePlan(HttpServletRequest req, Model model);
	
	//기획서 삭제
	public void deletePlan(HttpServletRequest req, Model model);
	
	//e_name(사원명)으로 username 찾기
	public void searchUsername(HttpServletRequest req, Model model);
}
