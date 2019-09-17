package com.pj.erp.service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.MF_DAO;
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.MF.MF_material;
import com.pj.erp.vo.MF.MF_plan;
import com.pj.erp.vo.MF.MF_product_list;
import com.pj.erp.vo.MS.MS_plan;

@Service
public class MF_ServiceImpl implements MF_Service {

	
	@Autowired
	MF_DAO dao;
	// 자재등록
	@Override
	public void insertMF(HttpServletRequest req, Model model) {
		
		MF_material vo = new MF_material();
		vo.setAccounts_code("qa_02200");
		vo.setAccount_name("자재_"+req.getParameter("material_name"));
		vo.setDi_table("MATERIAL_TBL");
		vo.setDetail_ac_code("qa");
		dao.insertDetailAc(vo);
		
		vo.setMaterial_name(req.getParameter("material_name"));
		vo.setMaterial_unit(req.getParameter("material_unit"));
		System.out.println(vo.getMaterial_name());
		
		int insertCnt = dao.insertMF(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	//자재목록가져오기
	@Override
	public void selectMF(HttpServletRequest req, Model model) {
		int cnt = 0; 			//글의 갯수
		
		cnt = dao.getMaterialListCnt();
		
		System.out.println("cnt : "+ cnt);
		
		List<MF_material> dto = dao.getMaterialList();
		System.out.println(dto.get(0).getMaterial_code());
		
		model.addAttribute("dto", dto);
	}
	
	//자재목록 수정
	@Override
	public void updateMF(HttpServletRequest req, Model model) {
		MF_material vo = new MF_material();
		vo.setMaterial_code(req.getParameter("material_code"));
		vo.setMaterial_name(req.getParameter("material_name"));
		vo.setMaterial_unit(req.getParameter("material_unit"));
		
		int updateCnt = dao.updateMF(vo);
		
		model.addAttribute("cnt", updateCnt);
	}

	//자재목록삭제
	@Override
	public void deleteMF(HttpServletRequest req, Model model) {
		String material_code = req.getParameter("material_code");
		
		int deleteCnt = dao.deleteMaterial(material_code);
		
		model.addAttribute("cnt", deleteCnt);
	}
	//생산계획등록처리
	@Override
	public void insertMFPlan(HttpServletRequest req, Model model) {
		
		MF_plan vo = new MF_plan();
		vo.setBom_code(req.getParameter("bom_code"));
		vo.setProduct_code(req.getParameter("product_code"));
		
		String start_date = req.getParameter("start_date");
		start_date = start_date.replace("/", "-");
		
		String end_date = req.getParameter("end_date");
		end_date = end_date.replace("/", "-");
		
		vo.setStart_date(Date.valueOf(start_date));
		vo.setEnd_date(Date.valueOf(end_date));
		
		vo.setEf_cost(Integer.parseInt(req.getParameter("ef_cost")));
		vo.setEf_amount(Integer.parseInt(req.getParameter("ef_amount")));
		
		int insertCnt = dao.insertMFplan(vo);
		
		model.addAttribute("cnt", insertCnt);
	}

	// 생산계획목록가져오기
	@Override
	public void getMFplanList(HttpServletRequest req, Model model) {
		
		List<MF_plan> dto = dao.getMFplanList();
		model.addAttribute("dto", dto);
	}

	//제품명검색
	@Override
	public void searchProName(HttpServletRequest req, Model model) {
		String product_name = req.getParameter("product_name");
		
		int cnt = dao.selectProName(product_name); 
		
		if(cnt > 0) {
			List<MF_product_list> dto = dao.getProductList(product_name);
			model.addAttribute("dto", dto);
		}

		model.addAttribute("cnt", cnt);
	}

	
}
