package com.pj.erp.service;

import java.sql.Timestamp;

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
		vo.setEp_amount(Integer.parseInt(req.getParameter("ep_amount")));
		vo.setEp_price(Integer.parseInt(req.getParameter("ep_price")));
		vo.setEp_deliver_date(Timestamp.valueOf(req.getParameter("Ep_deliver_date")));
		vo.setEp_reg_date(new Timestamp(System.currentTimeMillis()));
		vo.setUsername(req.getParameter("username"));
		vo.setE_approval_code(req.getParameter("e_approval_code"));
		vo.setEas_code(req.getParameter("eas_code"));

		vo.setPosition_code(req.getParameter("position_code"));
	}
	
	// ST_sale_plan 목록
	@Override
	public void salePlan(HttpServletRequest req, Model model) {
		vo.setPosition_code(req.getParameter("position_code"));	
		
	}


	@Override
	public void totalSales(HttpServletRequest req, Model model) {

		// TODO Auto-generated method stub
		
	}

	// ST_sale_plan 글 쓰기
	@Override
	public void salePlanWrite(HttpServletRequest req, Model model) {
		
		// 바구니 생성
		STVO vo = new STVO();
		
	}
}
