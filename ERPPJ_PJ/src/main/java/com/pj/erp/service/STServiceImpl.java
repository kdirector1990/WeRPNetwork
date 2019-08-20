package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.STVO;

@Service
public class STServiceImpl implements STService {
	
	// 글 목록
	@Override
	public void estimateTBL(HttpServletRequest req, Model model) {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 글 쓰기
	@Override
	public void estimateWrite(HttpServletRequest req, Model model) {
		// 바구니 생성
		STVO vo = new STVO();
		
		vo.setEq_code(req.getParameter("eq_code"));
		vo.setCustomer_code(req.getParameter("customer_code"));
		vo.setAccount_code(req.getParameter("account_code"));
		
	}

}
