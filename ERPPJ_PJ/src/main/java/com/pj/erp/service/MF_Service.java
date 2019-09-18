package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MF_Service {
	
	// 자재등록
	public void insertMF(HttpServletRequest req, Model model);
	
	// 자재목록가져오기
	public void selectMF(HttpServletRequest req, Model model);
	
	//자재목록 수정
	public void updateMF(HttpServletRequest req, Model model);
	
	//자재목록삭제
	public void deleteMF(HttpServletRequest req, Model model);
	
	//생산계획등록처리
	public void insertMFPlan(HttpServletRequest req, Model model);
	
	//생산계획목록가져오기
	public void getMFplanList(HttpServletRequest req, Model model);
	
	//생산계획수정
	public void updateMFplan(HttpServletRequest req, Model model);
	
	//생산계획삭제
	public void deleteMFplan(HttpServletRequest req, Model model);
	
	//제품명검색 | 제품테이블 : 제품계정코드, BOM코드, 제품명
	public void searchProName(HttpServletRequest req, Model model);
}
