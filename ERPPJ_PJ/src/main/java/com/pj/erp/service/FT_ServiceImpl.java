package com.pj.erp.service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.FT_DAO;
import com.pj.erp.vo.FT.FT_Savings;

@Service
public class FT_ServiceImpl implements FT_Service{
	@Autowired 
	FT_DAO dao;
	
	// 거래처 추가
	@Override
	public int FT_ACCInsert(Map<String, Object> map) {
		return dao.FT_AccInsert(map);
	}

	// 적금가져오기
	@Override
	public void FT_SavingsSelect(HttpServletRequest req, Model model) {
		List<FT_Savings> savings = dao.FT_SavingsSelect();
		System.out.println("ACCCode : " + savings.get(0).getAccCode());
		model.addAttribute("saving", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 적금추가
	@Override
	public String FT_SavingsInsert(Map<String, Object> map) {
		int result = dao.FT_SavingsInsert(map);
		if(result != 0) {
			return dao.FT_SavingsKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 적금수정
	@Override
	public String FT_SavingsUpdate(Map<String, Object> map) {
		if(dao.FT_SavingsUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 예금가져오기
	@Override
	public void FT_DepositSelect(HttpServletRequest req, Model model) {
		List<FT_Savings> savings = dao.FT_DepositSelect();
		System.out.println("ACCCode : " + savings.get(0).getAccCode());
		model.addAttribute("saving", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 예금추가
	@Override
	public String FT_DepositInsert(Map<String, Object> map) {
		int result = dao.FT_DepositInsert(map);
		if(result != 0) {
			return dao.FT_DepositKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 예금수정
	@Override
	public String FT_DepositUpdate(Map<String, Object> map) {
		if(dao.FT_DepositUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	@Override
	public void FT_applyinput(HttpServletRequest req, Model model) {
		dao.FT_applyinput();
	}

}
