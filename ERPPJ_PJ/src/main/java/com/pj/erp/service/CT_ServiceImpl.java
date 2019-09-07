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
import com.pj.erp.vo.CT.CT_AS_VO;
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
	public CT_VO CT_select_code(HttpServletRequest req, Model model) {
		String code = req.getParameter("ceq_code");
		CT_VO vo = dao.selectCode(code);
		System.out.println(code);
		System.out.println(vo.getCeq_code());
		System.out.println(vo.getCeq_name());
		System.out.println(vo.getCeq_type());
		return vo;
	}

	
	//전산설비 수정화면 입력폼
	@Override
	public int CT_update_ct(HttpServletRequest req, Model model) {
		String ceq_code = req.getParameter("ceq_code");
		String ceq_name = req.getParameter("ceq_name");
		String ceq_type = req.getParameter("ceq_type");
		String ceq_acquire_date = req.getParameter("ceq_acquire_date");
		Date col = Date.valueOf(ceq_acquire_date);
		String deparment_code = req.getParameter("department_code");
		System.out.println("부서번호 : " + deparment_code);
		String location = req.getParameter("ceq_location");
		
		//콤마제거(매입가, 예상연수내용)
		String cost = req.getParameter("ceq_prime_cost");
		int ceq_prime_cost = Integer.parseInt(cost.replace(",", ""));;
		
		String durable = req.getParameter("ceq_durable");
		int ceq_durable = Integer.parseInt(durable.replace(",", ""));
		
		int ceq_depreciation = Integer.parseInt(req.getParameter("ceq_depreciation"));
		String ceq_depreciation_type = req.getParameter("ceq_depreciation_type");
		
		CT_VO vo = new CT_VO();
		
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
		
		int updateCnt = dao.updateCT(vo);
		
		System.out.println(updateCnt);
		return updateCnt;
	}

	//전산설비 폐기처리
	@Override
	public int CT_delete_ct(HttpServletRequest req, Model model) {
		String ceq_code = req.getParameter("ceq_code");
		
		CT_VO vo = new CT_VO();
		
		vo.setCeq_code(ceq_code);
		
		int deleteCnt = dao.deleteCT(vo);
		
		return deleteCnt;
	}

	//AS 등록
	@Override
	public int AS_insert_ct(HttpServletRequest req, Model model) {
		
		String department_code = req.getParameter("department_code");
		String username = req.getParameter("username");
		String cas_title = req.getParameter("cas_title");
		String cas_content = req.getParameter("cas_content");
		String cas_url = req.getParameter("cas_url");
		
		CT_AS_VO vo = new CT_AS_VO();
		
		vo.setDepartment_code(department_code);
		vo.setUsername(username);
		vo.setCas_title(cas_title);
		vo.setCas_content(cas_content);
		vo.setCas_uri(cas_url);
		
		System.out.println(vo.getDepartment_code());
		System.out.println(vo.getUsername());
		System.out.println(vo.getCas_title());
		System.out.println(vo.getCas_content());
		System.out.println(vo.getCas_uri());
		
		int insertCnt = dao.insertAS(vo);
		
		return insertCnt;
	}

	//전산설비 목록
	@Override
	public List<CT_AS_VO> CT_select_as(HttpServletRequest req, Model model) {
		int state = Integer.parseInt(req.getParameter("cas_state"));
		
		CT_AS_VO se = new CT_AS_VO();
		se.setCas_state(state);
		
		List<CT_AS_VO> vo = dao.selectAS(se);
		
		return vo;
	}
	
	
	
	

}
