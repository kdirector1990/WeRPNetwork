package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface HR_Service {
	
	// 인사정보등록
	public void inputProHR1(MultipartHttpServletRequest req, Model model);
	
	// 인사정보등록2
	public void inputProHR2(HttpServletRequest req, Model model);
	
	//호봉테이블 직급메서드
	public void selectRank(HttpServletRequest req, Model model);
}
