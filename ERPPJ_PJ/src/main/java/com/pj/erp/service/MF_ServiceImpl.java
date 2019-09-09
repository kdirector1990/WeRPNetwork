package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.MF_DAO;
import com.pj.erp.vo.MF.MF_material;
import com.pj.erp.vo.MS.MS_plan;

@Service
public class MF_ServiceImpl implements MF_Service {

	
	@Autowired
	MF_DAO dao;
	// 자재등록
	/*
	@Override
	public void insertMF(HttpServletRequest req, Model model) {
		
		MF_material vo = new MF_material();
		vo.setMaterials_code(req.getParameter("materials_code"));
		vo.setMaterials_name(req.getParameter("materials_name"));
		vo.setMaterials_unit(req.getParameter("materials_unit"));
		
		int insertCnt = dao.insertMF(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}
	*/
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
	
	
}
