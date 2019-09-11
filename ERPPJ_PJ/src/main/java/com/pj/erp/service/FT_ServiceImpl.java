package com.pj.erp.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.persistence.FT_DAO;
import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;

@Service
public class FT_ServiceImpl implements FT_Service{
	@Autowired 
	FT_DAO dao;

	// 거래번호 최고값 가져오기
	@Override
	public int FT_chitMaxNumber(Map<String, Object> map) {
		int number = dao.FT_DateChitCnt(map); 
		if(number == 0) {
			return 1;
		} else {
			return dao.FT_ChitMaxNumber(map) + 1;
		}
	}
	
	// 분개 데이터 가져오기
	@Override
	public List<FT_Chit> FT_chitDataLoad(Map<String, Object> map, Model model) {
		int number = dao.FT_chitDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_chitDataLoad(map);
		}
	}
	
	// 전표입력
	@Override
	public String FT_chitInsert(Map<String, Object> map) {
		System.out.println(map.get("type"));
		int number = dao.FT_chitInsert(map); 
		if(number == 0) {
			return "실패";
		} else {
			return dao.FT_chitKeySelect();
		}
	}
	
	// 전표수정
	@Override
	public String FT_chitupdate(Map<String, Object> map) {
		System.out.println("map = " + map.get("fname"));
		if(map.get("fname").equals("null")) {
			System.out.println("map = " + map.get("fname"));
			map.replace("fname", null);
		}
		int number = dao.FT_chitupdate(map); 
		if(number == 0) {
			return "실패";
		} else {
			return "성공";
		}
	}
	
	// 전표삭제
	@Override
	public String FT_chitDelete(Map<String, Object> map) {
		int number = dao.FT_chitDelete(map); 
		if(number == 0) {
			return "실패";
		} else {
			return "성공";
		}
	}
	
	// 거래처 추가
	@Override
    public void FT_AccountInsert(MultipartHttpServletRequest req, Model model) {
        MultipartFile file = req.getFile("scanfile");
        
        String saveDir = req.getRealPath("/resources/images/"); //저장 경로(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SPRING_BMS_Project\resources\images\)
        
        String realDir="C:\\Dev\\workspace\\ERPPJ_PJ\\src\\main\\webapp\\resources\\images\\"; // 저장 경로
        
        try {
            file.transferTo(new File(saveDir+file.getOriginalFilename()));
            
            FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
            
            int data = 0;
            
            while((data = fis.read()) != -1) {
                fos.write(data);
            }
            fis.close();
            fos.close();
                    
            FT_Account vo = new FT_Account();
            vo.setCustomer_name(req.getParameter("customerName"));
            vo.setBranch_name(req.getParameter("branchName"));
            vo.setCustomer_credit(req.getParameter("customerCredit"));
            vo.setDeal_state(req.getParameter("state"));
            vo.setBs_name(req.getParameter("bsName"));
            vo.setBs_master(req.getParameter("bsMaster"));
            vo.setBs_startdate(req.getParameter("bsStartdate"));
            vo.setBs_number(req.getParameter("bsNumber"));
            vo.setBs_address(req.getParameter("bsAddress"));
            vo.setBs_address2(req.getParameter("bsAddress2"));
            vo.setBs_condition(req.getParameter("bsCondition"));
            vo.setBs_line(req.getParameter("bsLine"));
            vo.setLicense_scanfile(file.getOriginalFilename());
            
            int insertCnt = dao.FT_AccountInsert(vo);
            
            model.addAttribute("cnt", insertCnt);
            
        } catch(IOException e) {
            e.printStackTrace();
        }
        
    }

	// 거래처 가져오기
	@Override
	public void FT_AccountAllSelect(HttpServletRequest req, Model model) {
		List<FT_Account> account = dao.FT_AccountAllSelect();
		System.out.println("customerCode : " + account.get(0).getCustomer_code());
		model.addAttribute("account", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public FT_Account FT_AccountOneSelect(HttpServletRequest req) {
		FT_Account ac = dao.FT_AccountOneSelect(req.getParameter("key"));
		System.out.println(ac);
		return ac;
	}

	// 거래처 검색한 것 가져오기
	@Override
	public List<FT_Account> FT_AccountSelect(HttpServletRequest req) {
		List<FT_Account> ac = dao.FT_AccountSelect(req.getParameter("srhval"));
		System.out.println(ac);
		return ac;
	}
	
	// 적금가져오기
	@Override
	public void FT_SavingsSelect(HttpServletRequest req, Model model) {
		List<FT_Savings> savings = dao.FT_SavingsSelect();
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

	// 계정과목 가져오기
	@Override
	public void FT_SubjectAllSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> subject = dao.FT_SubjectAllSelect();
		System.out.println("AccountCode : " + subject.get(0).getAccounts_code());
		model.addAttribute("subject", subject);
		model.addAttribute("listsize", subject.size() + 1);
	}
	
	// 계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> tf = dao.FT_SubjectSelect(req.getParameter("srhval"));
		System.out.println(tf);
		System.out.println(req.getParameter("srhval"));
		return tf;
	}
	
	// 사원 가져오기
	@Override
	public void FT_UsersAllSelect(HttpServletRequest req, Model model) {
		List<HR_VO> users = dao.FT_UsersAllSelect();
		System.out.println("username : " + users.get(0).getUsername());
		model.addAttribute("users", users);
		model.addAttribute("listsize", users.size() + 1);
	}
	
	// 사원 검색한 것 가져오기
	@Override
	public List<HR_VO> FT_UsersSelect(HttpServletRequest req) {
		List<HR_VO> tf = dao.FT_UsersSelect(req.getParameter("srhval"));
		System.out.println(tf);
		System.out.println(req.getParameter("srhval"));
		return tf;
	}
	
	@Override
	public void FT_applyinput(HttpServletRequest req, Model model) {
		dao.FT_applyinput();
	}

	//단기차입금목록검색결과
	@Override
	public List<FT_Short_Borrow_List> getSBorrowList(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
			
		List<FT_Short_Borrow_List> list = dao.getSBorrowList(map);
		
		return list;
	}

	//장기차입금목록검색결과
	@Override
	public List<FT_Long_Borrow_List> getLBorrowList(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
			
		List<FT_Long_Borrow_List> list = dao.getLBorrowList(map);
		
		return list;
	}

	@Override
	public List<FT_Bill_payment_VO> getBillPaymentList(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
			List<FT_Bill_payment_VO> list = dao.getBillPaymentList(map);
		
		return list;
	}	
}
