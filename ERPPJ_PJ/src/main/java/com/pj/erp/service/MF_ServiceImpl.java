package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.pj.erp.persistence.MS_DAO;
import com.pj.erp.vo.MF_VO;

public class MF_ServiceImpl implements MF_Service {

	
	@Autowired
	MS_DAO dao;
	
	// 자재등록
	@Override
	public void insertPlanPro(HttpServletRequest req, Model model) {
		
		MF_VO vo = new MF_VO();
		vo.setMaterials_code(req.getParameter("materials_code"));
		vo.setAccount_code(req.getParameter("account_code"));
		vo.setMaterials_name(req.getParameter("materials_name"));
		vo.setMaterials_unit(req.getParameter("materials_unit"));
	}
}
