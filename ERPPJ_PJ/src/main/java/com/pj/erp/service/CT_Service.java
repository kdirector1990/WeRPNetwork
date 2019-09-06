package com.pj.erp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.CT.CT_VO;

public interface CT_Service {

	//전산설비 등록
	public int CT_insert(HttpServletRequest req, Model model);
	
	//전산설비 목록
	public void CT_select(HttpServletRequest req, Model model);
	
	//전산설비 목록(ajax)
	public List<CT_VO> CT_select_A(HttpServletRequest req, Model model);
	
	//전산설비 수정(개인) 입력폼.
	public void CT_select_code(HttpServletRequest req, Model model);
	
}
