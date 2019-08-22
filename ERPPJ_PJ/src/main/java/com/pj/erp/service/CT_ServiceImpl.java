package com.pj.erp.service;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.CT_VO;

@Service
public class CT_ServiceImpl implements CT_Service{
	
	Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public void CT_insert(HttpServletRequest req, Model model) {
		
		String ceq_code = req.getParameter("ceq_code");
		String ceq_type = req.getParameter("ceq_type");
		String ceq_name = req.getParameter("ceq_name");
		int ceq_prime_cost = Integer.parseInt(req.getParameter("ceq_prime_cost"));
		
		DateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		
		String ceq_acquire_date = req.getParameter("ceq_acquire_date");
			Date col = Date.valueOf(ceq_acquire_date);
			
			CT_VO vo = new CT_VO();
			
			vo.setCeq_code(ceq_code);
			vo.setCeq_type(ceq_type);
			vo.setCeq_name(ceq_name);
			vo.setCeq_prime_cost(ceq_prime_cost);
			vo.setCeq_acquire_date(col);
			
			System.out.println(vo.getCeq_code());
			System.out.println(vo.getCeq_acquire_date());
			
			model.addAttribute("vo", vo);		
	}
	
	

}
