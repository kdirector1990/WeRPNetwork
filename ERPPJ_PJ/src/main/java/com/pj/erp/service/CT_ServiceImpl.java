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
		
		int i = 0;
		do {
			String ceq_code = req.getParameter("ceq_code" + i);
			String ceq_name = req.getParameter("ceq_name" + i);
			String ceq_type = req.getParameter("ceq_type" + i);
			String ceq_acquire_date = req.getParameter("ceq_acquire_date" + i);
			Date col = Date.valueOf(ceq_acquire_date);
			String deparment_code = req.getParameter("deparment_code" + i);
			String location = req.getParameter("ceq_location" + i);
			int ceq_prime_cost = Integer.parseInt(req.getParameter("ceq_prime_cost" + i));
			int ceq_durable = Integer.parseInt(req.getParameter("ceq_durable" + i));
			int ceq_depreciation = Integer.parseInt(req.getParameter("ceq_depreciation" + i));
			
			System.out.println(ceq_code);
			System.out.println(ceq_name);
			System.out.println(ceq_type);
			System.out.println(col);
			System.out.println(deparment_code);
			System.out.println(location);
			System.out.println(ceq_prime_cost);
			System.out.println(ceq_durable);
			System.out.println(ceq_depreciation);
			
			/*	CT_VO vo = new CT_VO();
				
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
				System.out.println(vo.getCeq_depreciation()); */
			
			i++;
		}
		while(req.getParameter("ceq_code"+i) != null);
	}
	
	

}
