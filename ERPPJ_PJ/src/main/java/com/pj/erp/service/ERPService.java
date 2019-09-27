package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.HashVO;

@Service
public interface ERPService {

	public void testreg(HttpServletRequest req, Model model);
	
	public void nfc(HttpServletRequest req, Model model);
	
	//물품구매 목록
	public void materialList(HttpServletRequest req, Model model);
	
	//암호화폐 예산 편성목록 가져오기
	public List<HashVO> selectDept(HttpServletRequest req, Model model);
	
	//물품판매목록
	public void productList(HttpServletRequest req, Model model);
	
	//물품 상세페이지
	public void productDetailList(HttpServletRequest req, Model model);
}
