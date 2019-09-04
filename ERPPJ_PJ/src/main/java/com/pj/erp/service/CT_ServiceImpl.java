package com.pj.erp.service;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.CT_DAO;
import com.pj.erp.vo.CT.CT_VO;

@Service
public class CT_ServiceImpl implements CT_Service{
	
	@Autowired
	CT_DAO dao;
	
	Map<String, Object> map = new HashMap<String, Object>();

	//고정자산 입력
	@Override
	public int CT_insert(HttpServletRequest req, Model model) {
		
		System.out.println("동작");
		
		int i = 0;
		int insertCnt = 0;
		CT_VO vo = new CT_VO();
		
		do {
			System.out.println("동작2");
			String ceq_name = req.getParameter("ceq_name" + i);
			String ceq_type = req.getParameter("ceq_type" + i);
			String ceq_acquire_date = req.getParameter("ceq_acquire_date" + i);
			Date col = Date.valueOf(ceq_acquire_date);
			String deparment_code = req.getParameter("deparment_code" + i);
			String location = req.getParameter("ceq_location" + i);
			System.out.println(ceq_acquire_date);
			
			//콤마제거(매입가, 예상연수내용)
			System.out.println("동작3");
			String cost = req.getParameter("ceq_prime_cost" + i);
			int ceq_prime_cost = Integer.parseInt(cost.replace(",", ""));;
			System.out.println(ceq_prime_cost);
			
			System.out.println("동작4");
			String durable = req.getParameter("ceq_durable" + i);
			int ceq_durable = Integer.parseInt(durable.replace(",", ""));
			System.out.println(ceq_durable);
			
			int ceq_depreciation = Integer.parseInt(req.getParameter("ceq_depreciation" + i));
			System.out.println("동작5");
			String ceq_depreciation_type = req.getParameter("ceq_depreciation_type"+i);
			System.out.println(ceq_depreciation_type);
			
			vo.setCeq_name(ceq_name);
			vo.setCeq_type(ceq_type);
			vo.setCeq_acquire_date(col);
			vo.setDepartment_code(deparment_code);
			vo.setCeq_location(location);
			vo.setCeq_prime_cost(ceq_prime_cost);
			vo.setCeq_durable(ceq_durable);
			vo.setCeq_depreciation(ceq_depreciation);
			vo.setCeq_depreciation_type(ceq_depreciation_type);

			
			System.out.println(vo.getCeq_name());
			System.out.println(vo.getCeq_type());
			System.out.println(vo.getCeq_acquire_date());
			System.out.println(vo.getDepartment_code());
			System.out.println(vo.getCeq_location());
			System.out.println(vo.getCeq_prime_cost());
			System.out.println(vo.getCeq_durable());
			System.out.println(vo.getCeq_depreciation());
			System.out.println(vo.getCeq_depreciation_type());
			System.out.println();
			
			insertCnt = dao.InsertCT(vo);
			
			System.out.println("다 돌아갔다.");
			
			i++;
		}
		while(req.getParameter("ceq_name"+i) != null);
		
		return insertCnt;
	}
	
	

}
