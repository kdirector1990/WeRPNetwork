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
		String ceq_name = req.getParameter("ceq_name");
		String ceq_type = req.getParameter("ceq_type");
		String ceq_acquire_date = req.getParameter("ceq_acquire_date");
		Date col = Date.valueOf(ceq_acquire_date);
		String deparment_code = req.getParameter("deparment_code");
		String location = req.getParameter("location");
		int ceq_prime_cost = Integer.parseInt(req.getParameter("ceq_prime_cost"));
		int ceq_durable = Integer.parseInt(req.getParameter("ceq_durable"));
		int ceq_depreciation = Integer.parseInt(req.getParameter("ceq_depreciation"));
		
			CT_VO vo = new CT_VO();
			
			vo.setCeq_code(ceq_code);
			vo.setCeq_type(ceq_type);
			vo.setCeq_name(ceq_name);
			vo.setCeq_acquire_date(col);
			vo.setCeq_prime_cost(ceq_prime_cost);
			vo.setDepartment_code(deparment_code);
			vo.setCeq_location(location);
			vo.setCeq_durable(ceq_durable);
			vo.setCeq_depreciation(ceq_depreciation);
			
			System.out.println(vo.getCeq_code());
			System.out.println(vo.getCeq_type());
			System.out.println(vo.getCeq_name());
			System.out.println(vo.getCeq_acquire_date());
			System.out.println(vo.getCeq_prime_cost());
			System.out.println(vo.getDepartment_code());
			System.out.println(vo.getCeq_location());
			System.out.println(vo.getCeq_durable());
			System.out.println(vo.getCeq_depreciation());			

			model.addAttribute("vo", vo);		
	}
	
	

}
