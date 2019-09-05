package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

// 경영지원 
public interface MS_Service {

	//기획서 등록
	public void insertPlan(HttpServletRequest req, Model model);
	
	//기획서 조회
	public void selectPlan(HttpServletRequest req, Model model);
	
	//기획서 수정
	public int updatePlan(HttpServletRequest req, Model model);
	
	//기획서 삭제
	public int deletePlan(HttpServletRequest req, Model model);
	
	//e_name(사원명)으로 username 찾기
	public void searchUsername(HttpServletRequest req, Model model);
}
