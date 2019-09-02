package com.pj.erp.service;

import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.SalePlan;

@Service
public class STServiceImpl implements STService {
	// 글 목록
	@Override
	public void estimateTBL(HttpServletRequest req, Model model) {
		// 바구니 생성
		Estimate vo = new Estimate();
	
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
		// 바구니 생성
		SalePlan vo = new SalePlan();
		
		vo.setPosition_code(req.getParameter("position_code"));	 // 현재 결제자
		vo.setSaleplan_code(req.getParameter("saleplen_code"));	// 판매 계획 코드
		vo.setAccount_code(req.getParameter("account_code"));	// 계정 코드
		vo.setS_plan_start(Date.valueOf(req.getParameter("s_plan_start")));	// 기간 시작
		vo.setS_plan_end(Date.valueOf(req.getParameter("s_plan_end")));		// 기간 종료
		vo.setEf_price(Integer.parseInt(req.getParameter("ef_price")));	// 예상 판매 가격
		vo.setSaleplan_name(req.getParameter("saleplan_name"));	// 품명
		vo.setSaleplan_standard(req.getParameter("saleplan_standard"));	// 규격
		vo.setSaleplan_unit(req.getParameter("saleplan_unit"));	// 단위
		vo.setSaleplan_amount(Integer.parseInt(req.getParameter("saleplan_amount")));	// 계획 수량
		vo.setNote(req.getParameter("note"));	// 비고
		
		
	}
	
	// tables-datatable (거래 명세서) 목록
	 @Override
	public void transaction(HttpServletRequest req, Model model) {
		 
	}
	
	@Override
	public void totalSales(HttpServletRequest req, Model model) {
		
	}

	
}
