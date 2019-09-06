package com.pj.erp.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.CT_DAO;
import com.pj.erp.vo.CT.CT_VO;
import com.pj.erp.vo.FT.FT_Detail_ac;

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
		int insertAC = 0;
		int insertCnt = 0;
		CT_VO vo = new CT_VO();
		FT_Detail_ac ac = new FT_Detail_ac();
		
		do {
			String ceq_code = req.getParameter("ceq_code"+i);
			String ceq_name = req.getParameter("ceq_name" + i);
			String ceq_type = req.getParameter("ceq_type" + i);
			String ceq_acquire_date = req.getParameter("ceq_acquire_date" + i);
			Date col = Date.valueOf(ceq_acquire_date);
			String deparment_code = req.getParameter("deparment_code" + i);
			String location = req.getParameter("ceq_location" + i);
			
			//콤마제거(매입가, 예상연수내용)
			String cost = req.getParameter("ceq_prime_cost" + i);
			int ceq_prime_cost = Integer.parseInt(cost.replace(",", ""));;
			
			String durable = req.getParameter("ceq_durable" + i);
			int ceq_durable = Integer.parseInt(durable.replace(",", ""));
			
			int ceq_depreciation = Integer.parseInt(req.getParameter("ceq_depreciation" + i));
			String ceq_depreciation_type = req.getParameter("ceq_depreciation_type"+i);
			
			//상세계정테이블에 담는다.
			ac.setAccounts_code("ta_00100");
			ac.setDetail_ac_code(ceq_code); //전산코드 100고정이었음.
			ac.setAccount_name(ceq_name);
			
			insertAC = dao.InsertAC(ac);
			if(insertAC == 1) {
				vo.setCeq_code(ceq_code);
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
			else {
				System.out.println("안돌아감."); 
			}
			
			//전산설비테이블에 담는다.
					}
		while(req.getParameter("ceq_name"+i) != null);
		
		return insertCnt;
	}

	//전산설비 목록 뿌리기
	@Override
	public void CT_select(HttpServletRequest req, Model model) {
		int cnt = 0;
		String type = req.getParameter("ceq_type");
		List<CT_VO> vo = null;
		cnt = dao.selectCTcnt(type);
		
		if(cnt != 0) {
			vo = dao.SelectCT(type);
			model.addAttribute("vo", vo);
		}
		
		model.addAttribute("cnt", cnt);
		
	}

	//ajax 전산설비 목록 뿌리기
	@Override
	public List<CT_VO> CT_select_A(HttpServletRequest req, Model model) {
		String type = req.getParameter("ceq_type");
		List<CT_VO> vo = null;
		vo = dao.SelectCT(type);
		
		return vo;
	}

	//전산설비 목록 code 검색
	@Override
	public void CT_select_code(HttpServletRequest req, Model model) {
		int selectCnt = 1;
		String code = req.getParameter("ceq_code");
		CT_VO vo = null;
		vo = dao.selectCode(code);
		
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("voC", vo);
	}
	
	//전산설비 수정화면 입력폼
	
	
	

}
