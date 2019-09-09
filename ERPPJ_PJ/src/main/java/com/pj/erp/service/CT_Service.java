package com.pj.erp.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_VO;

public interface CT_Service {

	//전산설비 등록
	public int CT_insert(HttpServletRequest req, Model model);
	
	//전산설비 목록
	public void CT_select(HttpServletRequest req, Model model);
	
	//전산설비 목록(ajax)
	public List<CT_VO> CT_select_A(HttpServletRequest req, Model model);
	
	//전산설비 수정(개인) 입력폼.
	public CT_VO CT_select_code(HttpServletRequest req, Model model);
	
	//전산설비 수정
	public int CT_update_ct(HttpServletRequest req, Model model);
	
	//전산설비 폐기
	public int CT_delete_ct(HttpServletRequest req, Model model);
	
	// AS등록
	public int AS_insert_ct(HttpServletRequest req, Model model);
	
	//AS 목록
	public List<CT_AS_VO> CT_select_as(HttpServletRequest req, Model model);
	
	//AS 목록(준선이형버전)
	public List<CT_AS_VO> CT_select_as2(Map<String,Object> map, HttpServletRequest req, Model model);
	
	//수리일지 검색
	public void SearchCode(HttpServletRequest req, Model model);
	
	//수리일지 등록
	public void InsertRP(HttpServletRequest req, Model model);
}
