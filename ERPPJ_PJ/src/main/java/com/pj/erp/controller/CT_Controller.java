package com.pj.erp.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pj.erp.service.CT_Service;
import com.pj.erp.service.ERPService;
import com.pj.erp.vo.CT.CT_AS_VO;
import com.pj.erp.vo.CT.CT_RP_VO;
import com.pj.erp.vo.CT.CT_VO;

@Controller
public class CT_Controller {

	@Autowired
	ERPService service;
	
	@Autowired
	CT_Service CT;
	
	private static final Logger logger = LoggerFactory.getLogger(CT_Controller.class);
	
	/* ==========================================================
	 * 전산팀 : Part 김지원
	 */
	
	//전산 설비 등록
	@RequestMapping("CT_equip_add")
	public String CT_equip_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_equip_add");
		CT.select_DEP(req, model);

		return "CT/CT_equip_add";
	}
	
	//Insert확인
	@RequestMapping("CT_subject_add")
	@ResponseBody
	public int CT_subject_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_subject_add");
		
		int insertCnt = CT.CT_insert(req, model);
		
		return insertCnt;
	}
	
	//전산 설비 관리
	  @RequestMapping("CT_equip_manage") 
	  public String CT_equip_manage2(HttpServletRequest req, Model model) {
		  logger.info("log => CT_equip_manage"); 
	 
		  return "CT/CT_equip_manage"; 
	 }
	 
	// 전산설비 관리 상태
	  @RequestMapping("CT_select_type")
	  @ResponseBody 
	  public List<CT_VO> CT_select_type(HttpServletRequest req, Model model) { 
		  logger.info("log => CT_select_type"); 
		  List<CT_VO> vo = CT.CT_select_A(req, model);
	  
		  return vo; 
	  }
	 

	 /*
	 // 전산설비 관리 상태검색
	@RequestMapping("CT_select_type2")
	public String CT_select_type2(HttpServletRequest req, Model model) {
		logger.info("log => CT_select_type");
		CT.CT_select(req, model);
		
		return "CT/CT_Test";
	}
	*/
	
	//전산 설비 관리 수정폼
	@RequestMapping("CT_select_code")
	@ResponseBody
	public CT_VO CT_select_code(HttpServletRequest req, Model model) {
		logger.info("log => CT_select_code");
		CT_VO voC = CT.CT_select_code(req, model);
		return voC;
	}
	
	
	//전산설비 수정
	@RequestMapping("CT_update_ct")
	@ResponseBody
	public int CT_update_ct(HttpServletRequest req, Model model) {
		logger.info("log => CT_update_ct");
		int updateCnt = CT.CT_update_ct(req, model);
		
		return updateCnt;
	}
	
	//전산설비 폐기
	@RequestMapping("CT_delete_ct")
	@ResponseBody
	public int CT_delete_ct(HttpServletRequest req, Model model) {
		logger.info("log => CT_delete_ct");
		int deleteCnt = CT.CT_delete_ct(req, model);
		
		return deleteCnt;
	}
	
	/*
	//A/S 입력 폼
	@RequestMapping("CT_write_AS")
	public String CT_write_AS(HttpServletRequest req, Model model) {
		logger.info("log => CT_write_AS");
		CT.selectDeptS(req, model);
		return "CT/CT_write_AS";
	}
	
	//AS등록
	@RequestMapping("CT_AS_add")
	@ResponseBody
	public int CT_AS_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_AS_add");
		int insertCnt = CT.AS_insert_ct(req, model);
		return insertCnt;
	}
	
	AS 요청 목록 가져오기
	@RequestMapping("CT_select_as")
	@ResponseBody
	public List<CT_AS_VO> CT_select_as(HttpServletRequest req, Model model) {
		logger.info("log => CT_select_as");
		
		List<CT_AS_VO> data = CT.CT_select_as(req, model);
		
		return data;
	}
	*/
	
	//AS 요청 목록 가져오기(준선이형 버전)
	@RequestMapping(value = "CT_select_as2", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public  List<CT_AS_VO> CT_select_as2(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => CT_select_as2");
		List<CT_AS_VO> data = CT.CT_select_as2(map, req, model);
		return data;
	}
	
	//AS 요청 목록 가져오기(코드)
	@RequestMapping("CT_update_ASW")
	@ResponseBody
	public CT_AS_VO CT_update_ASW(HttpServletRequest req, Model model) {
		logger.info("log => CT_update_ASW");
		
		CT_AS_VO data = CT.CT_select_asCode(req, model);
		
		return data;
	}
	
	//AS 수리중으로 변경
	@RequestMapping("CT_AS_Update")
	@ResponseBody
	public int CT_AS_Update(HttpServletRequest req, Model model) {
		logger.info("log => CT_AS_Update");
		
		int updateCnt = CT.CT_update_as(req, model);
		
		return updateCnt;
	}
	
	//AS 수리완료 변경
	@RequestMapping("CT_AS_Complete")
	@ResponseBody
	public int CT_AS_Complete(HttpServletRequest req, Model model) {
		logger.info("log => CT_AS_Complete");
		
		int updateCnt = CT.CT_AS_complete(req, model);
		
		return updateCnt;
	}
	
	
	//전산 설비 목록
	@RequestMapping("CT_equip_list")
	public String CT_equip_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_equip_list");
		CT.CT_All_List(req, model);
		return "CT/CT_equip_list";
	}
	
	//수리 일지 등록
	@RequestMapping("CT_repair_list_add")
	public String CT_repair_list_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_repair_list_add");
		
		return "CT/CT_repair_list_add";
	}
	
	//수리 일지 전산설비코드 조회 
	@RequestMapping("CT_Ceq_Search")
	public String CT_Ceq_Search(HttpServletRequest req, Model model) {
		logger.info("log => CT_Ceq_Search");
		CT.select_DEP(req, model);
		return "CT/CT_Ceq_Search";
	}
	
	//수리 일자 전산설비 조회결과 
	@RequestMapping("CT_Ceq_Search_Result")
	public String CT_Ceq_Search_Result(HttpServletRequest req, Model model) {
		logger.info("log => CT_Ceq_Search_Result");
		CT.SearchCode(req, model);
		return "CT/CT_Ceq_Search_Result";
	}
	
	//수리 일지 등록
	@RequestMapping("CT_repair_add")
	public String CT_repair_add(HttpServletRequest req, Model model) {
		logger.info("log => CT_repair_add");
		CT.InsertRP(req, model);
		return "CT/CT_repair_list_add_result";
	}
	
	//수리 일지 목록(내부수리, 외부수리 구분)
	@RequestMapping("CT_Select_RP")
	@ResponseBody
	public List<CT_RP_VO> CT_Select_RP(HttpServletRequest req, Model model) {
		logger.info("log => CT_Select_RP");
		List<CT_RP_VO> vo = CT.selectRPC(req, model);
		return vo;
	}
	
	//수리 일지 수정폼
	@RequestMapping("CT_update_RPW")
	@ResponseBody
	public CT_RP_VO CT_update_RPW(HttpServletRequest req, Model model) {
		logger.info("log => CT_update_RPW");
		CT_RP_VO vo = CT.updateFormRP(req, model);
		return vo;
	}
	
	//수리 일지 수정
	@RequestMapping("CT_Update_RP")
	@ResponseBody
	public int CT_Update_RP(HttpServletRequest req, Model model) {
		logger.info("log => CT_Update_RP");
		
		int updateCnt = CT.updateRP(req, model);
		
		return updateCnt;
	}
	
	//수리 일지 폐기
	@RequestMapping("CT_Delete_RP")
	@ResponseBody
	public int CT_Delete_RP(HttpServletRequest req, Model model) {
		logger.info("log => CT_Delete_RP");
		
		int deleteCnt = CT.deleteRP(req, model);
		
		return deleteCnt;
	}
	
	//수리 일지 삭제 페이지
	@RequestMapping("CT_repair_trash")
	public String CT_repair_trash(HttpServletRequest req, Model model) {
		logger.info("log => CT_repair_trash");
		
		return "CT/CT_repair_trash";
	}
	
	//수리 삭제 목록 가져오기
	@RequestMapping(value = "CT_repairDelete_list", produces ={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE} , method = RequestMethod.POST)
	@ResponseBody
	public List<CT_RP_VO> CT_repairDelete_list(@RequestBody Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		logger.info("log => CT_repairDelete_list");
		List<CT_RP_VO> vo = CT.deleteRpList(map, req, model);
		return vo;
	}
	
	//수리폐기 취소하기
	@RequestMapping("CT_RP_Rewind")
	@ResponseBody
	public int CT_RP_Rewind(HttpServletRequest req, Model model) {
		logger.info("log => CT_RP_Rewind");
		
		int updateCnt = CT.RpDelUpdate(req, model);
		
		return updateCnt;
	}
	
	
	
	//외부업체 수리 등록
	@RequestMapping("CT_ComInsertForm")
	public String CT_insertForm(HttpServletRequest req, Model model) {
		logger.info("log => CT_CominsertForm");
		
		return "CT/CT_ComInsertFrom";
	}
	
	//수리 현황
	@RequestMapping("CT_reqair_list")
	public String CT_reqair_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_reqair_list");
		
		return "CT/CT_reqair_list";
	}
	
	//예산 현황
	@RequestMapping("CT_budget")
	public String CT_budget(HttpServletRequest req, Model model) {
		logger.info("log => CT_budget");
		
		return "CT/CT_budget";
	}
	
	//추가 예산 신청
	@RequestMapping("CT_budget_apply")
	public String CT_budget_apply(HttpServletRequest req, Model model) {
		logger.info("log => CT_budget_apply");
		
		return "CT/CT_budget_apply";
	}
	
	//AS 요청 현황
	@RequestMapping("CT_as_list")
	public String CT_as_list(HttpServletRequest req, Model model) {
		logger.info("log => CT_as_list");
		
		return "CT/CT_as_list";
	}
	
	//AS 요청 관리
	@RequestMapping("CT_as_manage")
	public String CT_as_manage(HttpServletRequest req, Model model) {
		logger.info("log => CT_as_manage");
		
		return "CT/CT_as_manage";
	}
	
	
}
