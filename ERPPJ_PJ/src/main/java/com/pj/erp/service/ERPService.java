package com.pj.erp.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.MsgVO;
import com.pj.erp.vo.ST.ST_contrast;

@Service
public interface ERPService {

	public void testreg(HttpServletRequest req, Model model);
	
	public void nfc(HttpServletRequest req, Model model);
	
	//물품구매 목록
	public void materialList(HttpServletRequest req, Model model);
	
	//암호화폐 예산 편성목록 가져오기
	public List<HashVO> selectDept(HttpServletRequest req, Model model);
	
	//물품판매목록
	public void productList(HttpServletRequest req, Model model);
	
	//물품 상세페이지
	public void productDetailList(HttpServletRequest req, Model model);
	
	//가상화폐로 산 자재목록 가져오기
	public void selectMaterals(HttpServletRequest req, Model model);
	
	// ST_contrast_pp 검색 기능
	public void getcontrast (Model model);
	
	// 사내메신저 수신자 목록 가져오기
	public List<MsgVO> selectMsgUser(HttpServletRequest req, Model model);
	
	// 사내메신저 입력 폼
	public void MsgWriteForm(HttpServletRequest req, Model model);
	
	// 사내메신저 입력 완료 후 insert
	public void Msg_Write_Pro(HttpServletRequest req, Model model);
	
	//부서 지갑 번호 가져오기
	public String department_wallet_Search(HttpServletRequest req, Model model);
	
	//입력받은 예산 편성 가격 되돌리기
	public String department_price_req(HttpServletRequest req);
	
	//DB에 예산 편성 기록 남기기
	public void InsertDBbudget(HttpServletRequest req, String hash);
	
}
