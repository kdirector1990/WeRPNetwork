package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.Material_VO;

@Service
public interface ERPService {

	public void testreg(HttpServletRequest req, Model model);
	
	public void nfc(HttpServletRequest req, Model model);
	
	public void productList(HttpServletRequest req, Model model);
	
	//암호화폐 예산 편성목록 가져오기
	public List<HashVO> selectDept(HttpServletRequest req, Model model);
	
	//가상화폐로 산 자재목록 가져오기
	public void selectMaterals(HttpServletRequest req, Model model);
}
