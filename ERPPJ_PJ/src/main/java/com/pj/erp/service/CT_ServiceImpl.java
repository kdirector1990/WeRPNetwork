package com.pj.erp.service;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.pj.erp.persistence.CT_DAO;
import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_Depart_VO;
import com.pj.erp.vo.CT.CT_RP_VO;
import com.pj.erp.vo.CT.CT_VO;
import com.pj.erp.vo.FT.FT_Detail_ac;

@Service
public class CT_ServiceImpl implements CT_Service{
	
	@Autowired
	CT_DAO dao;
	
	//부서코드, 부서이름 가져오기
	@Override
	public void select_DEP(HttpServletRequest req, Model model) {
		List<CT_Depart_VO> dto = null; 
		dto = dao.selectDP();
		model.addAttribute(dto);
	}
	
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
		System.out.println(vo.get(0).getCeq_code());
		System.out.println(vo.get(0).getDepartment_name());
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

	//AS 목록
	@Override
	public CT_AS_VO CT_select_as(HttpServletRequest req, Model model) {
		int state = Integer.parseInt(req.getParameter("cas_state"));
		
		CT_AS_VO vo = dao.selectAS(state);
		
		return vo;
	}

	//AS목록 준선이형 버전
	@Override
	public List<CT_AS_VO> CT_select_as2(Map<String, Object> map, HttpServletRequest req, Model model) {
		
		String cas_state = (String)map.get("cas_state");
		
		System.out.println(cas_state);
		
		map.put("cas_state", cas_state);
		System.out.println(map.get("cas_state"));
		
		List<CT_AS_VO> data = dao.selectAS2(map);
		
		return data;
	}
	
	//AS목록 코드검색
	@Override
	public CT_AS_VO CT_select_asCode(HttpServletRequest req, Model model) {

		String cas_code = req.getParameter("cas_code");
		
		System.out.println(cas_code);
		
		CT_AS_VO data = dao.selectAScode(cas_code);
		
		return data;
	}
	
	//AS 시작(처리중)
	@Override
	public int CT_update_as(HttpServletRequest req, Model model) {
		int updateCnt = 0;
		String cas_code = req.getParameter("cas_code");
		System.out.println(cas_code);
		updateCnt= dao.updateAS(cas_code);
		System.out.println(updateCnt);
		return updateCnt;
	}
	
	//AS 처리완료
	@Override
	public int CT_AS_complete(HttpServletRequest req, Model model) {
		
		Map<String, Object> map = new HashMap();
		
		String cas_code = req.getParameter("cas_code");
		String cas_result = req.getParameter("cas_result");
		
		map.put("cas_code", cas_code);
		map.put("cas_result", cas_result);
		
		int updateCnt = dao.completeAS(map);
		
		return updateCnt;
	}
	

	//수리일지 부서검색
	@Override
	public void SearchCode(HttpServletRequest req, Model model) {
		
		int cnt = 0;
		String department_code = req.getParameter("department_code");
		
		System.out.println(department_code);
		
		cnt = dao.selectCEQ(department_code);
		
		if(cnt != 0) {
			List<CT_VO> dto = dao.selectCeqS(department_code);
			model.addAttribute("dto", dto);
			System.out.println("if 작동");
		}
		
		model.addAttribute("cnt", cnt);
	}

	//수리일지 등록
	@Override
	public void InsertRP(HttpServletRequest req, Model model) {
		
		String rr_title = req.getParameter("rr_title");
		String ceq_code = req.getParameter("ceq_code");
		String rr_content = req.getParameter("rr_content");
		String rr_repair_type = req.getParameter("rr_repair_type");
		
		//콤마제거
		String cost = req.getParameter("rr_cost");
		int rr_cost = Integer.parseInt(cost.replace(",", ""));;
		
		CT_RP_VO rp = new CT_RP_VO();
		rp.setRr_title(rr_title);
		rp.setCeq_code(ceq_code);
		rp.setRr_content(rr_content);
		rp.setRr_repair_type(rr_repair_type);
		rp.setRr_cost(rr_cost);
		
		int InsertCnt = dao.InsertRP(rp);
		
		model.addAttribute("insertCnt", InsertCnt);
	}

	//수리일지 조회하기(수리타입 : 내부수리, 외부수리)
	@Override
	public List<CT_RP_VO> selectRPC(HttpServletRequest req, Model model) {
		
		String rr_repair_type = req.getParameter("rr_repair_type");
		
		List<CT_RP_VO> vo = dao.selectRPC(rr_repair_type);
		
		return vo;
	}

	//수리일지 수정폼
	@Override
	public CT_RP_VO updateFormRP(HttpServletRequest req, Model model) {

		String rr_code = req.getParameter("rr_code");
		
		CT_RP_VO vo = dao.updateFormRP(rr_code);
		
		return vo;
	}

	//수리일지 수리완료
	@Override
	public int updateRP(HttpServletRequest req, Model model) {
		
		String rr_code = req.getParameter("rr_code");
		String rr_title = req.getParameter("rr_title");
		String rr_content = req.getParameter("rr_content");
		String rr_repair_type = req.getParameter("rr_repair_type");
		
		//콤마제거
		String cost = req.getParameter("rr_cost");
		int rr_cost = Integer.parseInt(cost.replace(",", ""));;
		
		CT_RP_VO vo = new CT_RP_VO();
		vo.setRr_code(rr_code);
		vo.setRr_title(rr_title);
		vo.setRr_content(rr_content);
		vo.setRr_repair_type(rr_repair_type);
		vo.setRr_cost(rr_cost);
		
		int updateCnt = dao.updateRP(vo);
		
		return updateCnt;
	}

	@Override
	public int deleteRP(HttpServletRequest req, Model model) {
		
		String rr_code = req.getParameter("rr_code");
		
		int deleteCnt = dao.deleteRP(rr_code);
		
		return deleteCnt;
	}

}
