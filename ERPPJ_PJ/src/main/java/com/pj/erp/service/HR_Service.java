package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.vo.HR_PaystepVO;

public interface HR_Service {
	
	// 인사정보등록
	public void inputProHR1(MultipartHttpServletRequest req, Model model);
	
	// 인사정보등록2
	public void inputProHR2(HttpServletRequest req, Model model);
	
	//호봉테이블 직급메서드
	public void selectRank(HttpServletRequest req, Model model);
	
	//호봉테이블 호봉이력 가져오기
	public List<HR_PaystepVO> selectMoney(HttpServletRequest req, Model model);
}
