package com.pj.erp.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MaximizeAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.persistence.FT_DAO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Building;
import com.pj.erp.vo.FT.FT_Card;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_DTB;
import com.pj.erp.vo.FT.FT_Deposit;
import com.pj.erp.vo.FT.FT_Depreciation;
import com.pj.erp.vo.FT.FT_Facility;
import com.pj.erp.vo.FT.FT_Land;
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Loan;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Note;
import com.pj.erp.vo.FT.FT_Plan_Result;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Securities;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_Total;
import com.pj.erp.vo.FT.FT_accounts_balance;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO; 
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.MS.MS_plan; 

@Service
public class FT_ServiceImpl implements FT_Service{
	@Autowired 
	FT_DAO dao;

	// 거래번호 최고값 가져오기
	@Override
	public int FT_chitMaxNumber(Map<String, Object> map) {
		if(Integer.parseInt(map.get("month").toString()) < 10) {
			map.put("month","0" + map.get("month"));
		}
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
		if(Integer.parseInt(map.get("month").toString()) < 10) {
			map.put("month","0" + Integer.parseInt(map.get("month").toString()));
		}
		int number = dao.FT_chitDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_chitDataLoad(map);
		}
	}
	
	// 전표페이지
	@Override
	public void FT_insertChit(HttpServletRequest req, Model model) {
		String keycode = req.getParameter("keynum"); 
		if(keycode != null) {
			String date = req.getParameter("date" + keycode);
			String no = req.getParameter("no" + keycode);
			String year = date.substring(0, 4);
			String month = date.substring(5,7);
			String day = date.substring(8, 10);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("chkno", no);
			map.put("year", year);
			map.put("month", month);
			map.put("day", day);
			
			List<FT_Chit> list = dao.FT_chitDataLoad(map);
			
			model.addAttribute("chkno", no);
			model.addAttribute("year", year);
			model.addAttribute("month", month);
			model.addAttribute("day", day);
			model.addAttribute("list", list);
			model.addAttribute("listsize", list.size());
		}
	}
	
	// 전표입력
	@Override
	public String FT_chitInsert(Map<String, Object> map) {
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
		if(map.get("fname").equals("null")) {
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
    public void FT_AccountInsert(HttpServletRequest req, Model model) {
		/*
		 * System.out.println(req.getFile("scanfile")); MultipartFile file =
		 * req.getFile("scanfile"); System.out.println("1");
		 * 
		 * String saveDir = req.getRealPath("/resources/img/"); //저장
		 * 경로(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\
		 * wtpwebapps\SPRING_BMS_Project\resources\images\)
		 * 
		 * String realDir=
		 * "C:\\dev50\\git2\\WeRPNetwork123\\ERPPJ_PJ\\src\\main\\webapp\\resources\\img\\";
		 * // 저장 경로
		 * 
		 * try { System.out.println("1"); file.transferTo(new
		 * File(saveDir+file.getOriginalFilename()));
		 * 
		 * System.out.println("1"); FileInputStream fis = new FileInputStream(saveDir +
		 * file.getOriginalFilename()); FileOutputStream fos = new
		 * FileOutputStream(realDir + file.getOriginalFilename());
		 * 
		 * int data = 0;
		 * 
		 * while((data = fis.read()) != -1) { fos.write(data); } fis.close();
		 * fos.close();
		 */

        FT_Account vo = new FT_Account();
        vo.setLicense_number(req.getParameter("number"));
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
        vo.setLicense_scanfile("wow.png");
        int insertCnt = dao.FT_AccountInsert(vo);
        
        model.addAttribute("cnt", insertCnt);
            
		/*
		 * } catch(IOException e) { e.printStackTrace(); }
		 */
        
    }
	
	// 거래처 수정
	@Override
	public String FT_AccountUpdate(Map<String, Object> map) {
		int result = dao.FT_AccountUpdate(map);
		if(result != 0) {
			return "성공";
		} else {
			return "insert 실패";
		}
	}
	
	// 거래처 삭제
	@Override
	public String FT_AccountDelete(Map<String, Object> map) {
		int result = dao.FT_LicenseDelete(map);
		if(result != 0) {
			return "성공";
		} else {
			return "insert 실패";
		}
	}

	// 거래처 가져오기
	@Override
	public void FT_AccountAllSelect(HttpServletRequest req, Model model) {
		List<FT_Account> account = dao.FT_AccountAllSelect();
		model.addAttribute("account", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public FT_Account FT_AccountOneSelect(HttpServletRequest req) {
		FT_Account ac = dao.FT_AccountOneSelect(req.getParameter("srhval"));
		return ac;
	}

	// 거래처 검색한 것 가져오기
	@Override
	public List<FT_Account> FT_AccountSelect(HttpServletRequest req) {
		List<FT_Account> ac = dao.FT_AccountSelect(req.getParameter("srhval"));
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

	// 적금삭제
	@Override
	public String FT_SavingsDelete(Map<String, Object> map) {
		if(dao.FT_SavingsPrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 예금가져오기
	@Override
	public void FT_DepositAllSelect(HttpServletRequest req, Model model) {
		List<FT_Deposit> savings = dao.FT_DepositAllSelect();
		model.addAttribute("deposit", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 예금 검색한 것 가져오기
	@Override
	public List<FT_Deposit> FT_DepositSelect(HttpServletRequest req, Model model) {
		List<FT_Deposit> tf = dao.FT_DepositSelect(req.getParameter("srhval"));
		return tf;
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

	// 예금삭제
	@Override
	public String FT_DepositDelete(Map<String, Object> map) {
		if(dao.FT_DepositPrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	// 받을어음 가져오기
	@Override
	public void FT_NoteAllSelect(HttpServletRequest req, Model model) {
		List<FT_Note> savings = dao.FT_NoteAllSelect();
		model.addAttribute("note", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 받을어음 추가
	@Override
	public String FT_NoteInsert(Map<String, Object> map) {
		int result = dao.FT_NoteInsert(map);
		if(result != 0) {
			return dao.FT_NoteKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 받을어음 수정
	@Override
	public String FT_NoteUpdate(Map<String, Object> map) {
		if(dao.FT_NoteUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 받을어음 삭제
	@Override
	public String FT_NoteDelete(Map<String, Object> map) {
		if(dao.FT_NotePrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	// 단기대여금 가져오기
	@Override
	public void FT_LoanAllSelect(HttpServletRequest req, Model model) {
		List<FT_Loan> savings = dao.FT_LoanAllSelect();
		model.addAttribute("loan", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 단기대여금 추가
	@Override
	public String FT_LoanInsert(Map<String, Object> map) {
		int result = dao.FT_LoanInsert(map);
		if(result != 0) {
			return dao.FT_LoanKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 단기대여금 수정
	@Override
	public String FT_LoanUpdate(Map<String, Object> map) {
		if(dao.FT_LoanUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 단기대여금 삭제
	@Override
	public String FT_LoanDelete(Map<String, Object> map) {
		if(dao.FT_LoanPrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	// 단기매매증권 가져오기
	@Override
	public void FT_SecuritiesAllSelect(HttpServletRequest req, Model model) {
		List<FT_Securities> savings = dao.FT_SecuritiesAllSelect();
		model.addAttribute("Securities", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 단기매매증권 추가
	@Override
	public String FT_SecuritiesInsert(Map<String, Object> map) {
		int result = dao.FT_SecuritiesInsert(map);
		if(result != 0) {
			return dao.FT_SecuritiesKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 단기매매증권 수정
	@Override
	public String FT_SecuritiesUpdate(Map<String, Object> map) {
		if(dao.FT_SecuritiesUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 단기매매증권 삭제
	@Override
	public String FT_SecuritiesDelete(Map<String, Object> map) {
		if(dao.FT_SecuritiesPrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	// 카드 가져오기
	@Override
	public void FT_CardManagementSelect(HttpServletRequest req, Model model) {
		List<FT_Card> savings = dao.FT_CardManagementSelect();
		model.addAttribute("cardlist", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}
	
	// 카드 추가
	@Override
	public String FT_CardManagementInsert(Map<String, Object> map) {
		int result = dao.FT_CardManagementInsert(map);
		if(result != 0) {
			return dao.FT_CardManagementKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 카드 수정
	@Override
	public String FT_CardManagementUpdate(Map<String, Object> map) {
		if(dao.FT_CardManagementUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 카드 삭제
	@Override
	public String FT_CardManagementDelete(Map<String, Object> map) {
		if(dao.FT_CardManagementPrevDelete(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}
	
	// 계정과목 가져오기
	@Override
	public void FT_SubjectAllSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> subject = dao.FT_SubjectAllSelect();
		model.addAttribute("subject", subject);
		model.addAttribute("listsize", subject.size() + 1);
	}
	
	// 계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_SubjectSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> tf = dao.FT_SubjectSelect(req.getParameter("srhval"));
		return tf;
	}
	
	// 부서 가져오기
	@Override
	public void FT_DepartmentAllSelect(HttpServletRequest req, Model model) {
		List<HR_VO> subject = dao.FT_DepartmentAllSelect();
		model.addAttribute("department", subject);
		model.addAttribute("listsize", subject.size() + 1);
	}
	
	// 부서 검색한 것 가져오기
	@Override
	public List<HR_VO> FT_DepartmentSelect(HttpServletRequest req, Model model) {
		List<HR_VO> tf = dao.FT_DepartmentSelect(req.getParameter("srhval"));
		return tf;
	}

	// 중계정과목 가져오기
	@Override
	public void FT_AccSubjectAllSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> subject = dao.FT_AccSubjectAllSelect();
		model.addAttribute("subject", subject);
		model.addAttribute("listsize", subject.size() + 1);
	}
	
	// 중계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_AccSubjectSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> tf = dao.FT_AccSubjectSelect(req.getParameter("srhval"));
		return tf;
	}
	
	// 사원 가져오기
	@Override
	public void FT_UsersAllSelect(HttpServletRequest req, Model model) {
		List<HR_VO> users = dao.FT_UsersAllSelect();
		model.addAttribute("users", users);
		model.addAttribute("listsize", users.size() + 1);
	}
	
	// 사원 검색한 것 가져오기
	@Override
	public List<HR_VO> FT_UsersSelect(HttpServletRequest req) {
		List<HR_VO> tf = dao.FT_UsersSelect(req.getParameter("srhval"));
		return tf;
	}
	
	//예산신청입력처리
	@Override
	public void FT_applyinput(HttpServletRequest req, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int count = Integer.parseInt(req.getParameter("count"));
		for(int i = 0 ; i <= count ; i++) {
			String dept_name = req.getParameter("dept_name"+i);
			String money = req.getParameter("money"+i);
			String dept_code = req.getParameter("dept_code"+i);
			String purpose = req.getParameter("purpose"+i);
			
			map.put("subject", dept_name);
			map.put("money", money);
			map.put("dept", dept_code);
			map.put("purpose", purpose);
			
		
			dao.FT_Detailinput(map);
			dao.FT_applyinput(map);
			
		}
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

	@Override
	public List<FT_land_list_VO> getLandList(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		List<FT_land_list_VO> list = dao.getLandList(map);
		return list;
	}

	@Override
	public List<FT_facility_list_VO> getFacilityList(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		List<FT_facility_list_VO> list = dao.getFacilityList(map);
		return list;
	}

	// 분개 그룹 가져오기
	@Override
	public List<FT_Chit> FT_chitSelect(Map<String, Object> map, Model model) {
		List<FT_Chit> list = dao.FT_ChitDistinct(map);
		return list;
	}
	
	// 검색된 모든 분개를 가져온다.
	@Override
	public List<FT_Chit> FT_journalList(Map<String, Object> map, Model model) {
		List<FT_Chit> list = dao.FT_journalList(map);
		return list;
	}
	
	// 거래처원장 리스트
	public List<FT_Ledger> FT_ledgerList(Map<String, Object> map, Model model) {
		int year = Integer.parseInt(map.get("firstday").toString().substring(0, 4));
		String month = map.get("firstday").toString().substring(5,7);
		if(month.equals("01")) {
			map.put("year", year-1);
			map.put("month", "12");
		} else {
			map.put("year", year);
			if(Integer.parseInt(month) < 11) {
				map.put("month", "0" + String.valueOf(Integer.parseInt(month)-1));
			} else {
				map.put("month", String.valueOf(Integer.parseInt(month)-1));
			}
		}
		
		List<FT_Ledger> list = dao.FT_ledgerList(map);
		return list;
	}
	
	// 거래처원장 리스트
	public List<FT_Chit> FT_ledgerAccList(Map<String, Object> map, Model model) {
		List<FT_Chit> list = dao.FT_ledgerAccList(map);
		return list;
	}
	
	// 일별 리스트
	public List<List<FT_DTB>> FT_DTBDayList(Map<String, Object> map, Model model) {
		int year = Integer.parseInt(map.get("firstday").toString().substring(0, 4));
		String month = map.get("firstday").toString().substring(5,7);
		String day = map.get("firstday").toString().substring(8,10);
		
		List<FT_DTB> listL = dao.FT_DTBDayListL(map);
		List<FT_DTB> listM = dao.FT_DTBDayListM(map);
		List<FT_DTB> listS = dao.FT_DTBDayListS(map);
		List<List<FT_DTB>> list = new ArrayList<List<FT_DTB>>();
		if(listL != null || listM != null || listS != null) {
			list.add(listL);
			list.add(listM);
			list.add(listS);
		} else {
			list = null;
		}
		String rootPath = System.getProperty("user.dir");

		return list;
	}
	
	// 월별 리스트
	public List<List<FT_DTB>> FT_DTBMonthList(Map<String, Object> map, Model model) {
		int year = Integer.parseInt(map.get("firstday").toString().substring(0, 4));
		String month = map.get("firstday").toString().substring(5,7);
		map.put("day", String.valueOf((new Date(year, Integer.parseInt(month), 0)).getDate()));
		map.put("firstday", map.get("firstday").toString());
		map.put("lastday", map.get("lastday").toString());
		
		List<FT_DTB> listL = dao.FT_DTBMonthListL(map);
		List<FT_DTB> listM = dao.FT_DTBMonthListM(map);
		List<FT_DTB> listS = dao.FT_DTBMonthListS(map);
		List<List<FT_DTB>> list = new ArrayList<List<FT_DTB>>();
		if(listL != null || listM != null || listS != null) {
			list.add(listL);
			list.add(listM);
			list.add(listS);
		} else {
			list = null;
		}
		return list;
	}
	
	// 승인처리
	@Override
	public String FT_CheckFormal(Map<String, Object> map, Model model) {
		String[] datelist = map.get("dates").toString().split("/");
		String[] nolist = map.get("nos").toString().split("/");
		for(int i = 0; i<datelist.length; i++) {
			map.put("dates", datelist[i]);
			map.put("nos", nolist[i]);
			if(dao.FT_CheckFormal(map) == 0) {
				return "실패";
			}
		}
		return "성공";
	}
	
	@Override
	public Map<String, Object> getBsshit(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		Map<String, Object> bs_result = new HashMap<String, Object>();
		String fiscalyear = (String)map.get("fiscalyear");
		
		String typename = "자산"; 
		List<FT_accounts_balance> assets_list = dao.FT_getAssetsList(typename);
		bs_result.put("assets_list", assets_list);
		
		typename = "부채";
		List<FT_accounts_balance> liab_list = dao.FT_getAssetsList(typename);
		bs_result.put("liab_list", liab_list);

		typename = "자본";
		List<FT_accounts_balance> capit_list = dao.FT_getAssetsList(typename);
		bs_result.put("capit_list", capit_list);
		
		int left_max = assets_list.size();
		int right_max = liab_list.size()+capit_list.size(); 
		int maxsize= left_max;
		if(left_max<=right_max) {
			maxsize = right_max;
		}
		
		 
		
		return bs_result;
	}
	
	@Override
	public Map<String, Object> getIsshit(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		Map<String, Object> is_result = new HashMap<String, Object>();
		
		String typename = "매출이익"; 
		List<FT_accounts_balance> income_list = dao.FT_getIsList(typename);
		  
		typename = "제품"; 
		List<FT_accounts_balance> cost_list = dao.FT_getIsList(typename);
		
		 
		
		double total_income = 0;
		double total_cost = 0;
		for(int i=0; i<income_list.size();i++) {
			total_income += income_list.get(i).getCreditor_total();
		}
		for(int i=0; i<cost_list.size();i++) {
			total_cost += cost_list.get(i).getCreditor_total();
		}
		
		
		double total_sale_income = total_income+total_cost;
		/*	매출총이익, 매출원가, 매출이익*/
		is_result.put("total_sale_income", total_sale_income);
		is_result.put("total_income", total_income);
		is_result.put("total_cost", total_cost);
		
		//판관비
		typename = "판매비와관리비"; 
		List<FT_accounts_balance> sale_expense = dao.FT_getIsList(typename);
		is_result.put("sale_expense", sale_expense);
		
		
		
		typename = "영업외수익"; 
		List<FT_accounts_balance> etc_income = dao.FT_getIsList(typename);
		
		typename = "영업외비용"; 
		List<FT_accounts_balance> etc_cost = dao.FT_getIsList(typename);
		
		double total_etc_income=0;
		for(int i=0; i<etc_income.size();i++) {
			total_etc_income += etc_income.get(i).getCreditor_total();
		}
		
		double total_etc_cost=0;
		for(int i=0; i<etc_cost.size();i++) {
			total_etc_cost += etc_cost.get(i).getDebtor_total();			
		}
		
		is_result.put("total_etc_income",total_etc_income); // 영업 외 수익 합계
		is_result.put("total_etc_cost",total_etc_cost); // 영업 외 비용
		
		
		typename = "법인세"; 
		List<FT_accounts_balance> tax_cost = dao.FT_getIsList(typename); 
		is_result.put("tax_cost",tax_cost); // 법인세
		
		
		
		return is_result;
	}
	
	// 건물 추가
	@Override
    public void FT_BuildingInsert(HttpServletRequest req, Model model) {
        FT_Building vo = new FT_Building();
        vo.setBuildingName(req.getParameter("buildingName"));
        vo.setAddress(req.getParameter("Address"));
        vo.setBuyDate(req.getParameter("buyDate"));
        vo.setBuyPrice(req.getParameter("buyPrice"));
        vo.setDepartmentCode(req.getParameter("departmentCode"));
        vo.setThinkYear(req.getParameter("thinkYear"));
        vo.setGamga(req.getParameter("gamga"));
        vo.setGamgaWay(req.getParameter("gamgaWay"));
        int insertCnt = dao.FT_BuildingInsert(vo);

        model.addAttribute("cnt", insertCnt);
    }
	
	// 건물 수정
	@Override
	public String FT_BuildingUpdate(Map<String, Object> map) {
		int result = dao.FT_BuildingUpdate(map);
		if(result != 0) {
			return "성공";
		} else {
			return "update 실패";
		}
	}
	
	// 건물 삭제
	@Override
	public String FT_BuildingDelete(Map<String, Object> map) {
		int result = dao.FT_BuildingPrevDelete(map);
		if(result != 0) {
			return "성공";
		} else {
			return "delete 실패";
		}
	}

	// 건물 가져오기
	@Override
	public void FT_BuildingAllSelect(HttpServletRequest req, Model model) {
		List<FT_Building> account = dao.FT_BuildingAllSelect();
		model.addAttribute("building", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 건물 검색한 것 가져오기
	@Override
	public FT_Building FT_BuildingOneSelect(HttpServletRequest req) {
		FT_Building ac = dao.FT_BuildingOneSelect(req.getParameter("srhval"));
		return ac;
	}
	

	// 토지 추가
	@Override
    public void FT_LandInsert(HttpServletRequest req, Model model) {
        FT_Land vo = new FT_Land();
        vo.setLandName(req.getParameter("landName"));
        vo.setAddress(req.getParameter("Address"));
        vo.setBuyDate(req.getParameter("buyDate"));
        vo.setBuyPrice(req.getParameter("buyPrice"));
        vo.setDepartmentCode(req.getParameter("departmentCode"));
        vo.setThinkYear(req.getParameter("thinkYear"));
        vo.setGamga(req.getParameter("gamga"));
        vo.setGamgaWay(req.getParameter("gamgaWay"));
        int insertCnt = dao.FT_LandInsert(vo);

        model.addAttribute("cnt", insertCnt);
    }
	
	// 토지 수정
	@Override
	public String FT_LandUpdate(Map<String, Object> map) {
		int result = dao.FT_LandUpdate(map);
		if(result != 0) {
			return "성공";
		} else {
			return "update 실패";
		}
	}
	
	// 토지 삭제
	@Override
	public String FT_LandDelete(Map<String, Object> map) {
		int result = dao.FT_LandPrevDelete(map);
		if(result != 0) {
			return "성공";
		} else {
			return "delete 실패";
		}
	}

	// 토지 가져오기
	@Override
	public void FT_LandAllSelect(HttpServletRequest req, Model model) {
		List<FT_Land> account = dao.FT_LandAllSelect();
		model.addAttribute("land", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 토지 검색한 것 가져오기
	@Override
	public FT_Land FT_LandOneSelect(HttpServletRequest req) {
		FT_Land ac = dao.FT_LandOneSelect(req.getParameter("srhval"));
		return ac;
	}
	

	// 감가 그룹 가져오기
	@Override
	public List<FT_Depreciation> FT_DepreciationList(Map<String, Object> map, Model model) {
		List<FT_Depreciation> list = new ArrayList<FT_Depreciation>();
		FT_Depreciation bvo = dao.FT_BDepreciationDistinct(map);
		FT_Depreciation lvo = dao.FT_LDepreciationDistinct(map);
		FT_Depreciation evo = dao.FT_EDepreciationDistinct(map);
		FT_Depreciation cvo = dao.FT_CDepreciationDistinct(map);
		if(bvo != null) {
			list.add(bvo);
		}
		if(lvo != null) {
			list.add(lvo);
		}
		if(evo != null) {
			list.add(evo);
		}
		if(cvo != null) {
			list.add(cvo);
		}
		return list;
	}
	
	// 감가 데이터 가져오기
	@Override
	public List<FT_Depreciation> FT_BDepreciationDataList(Map<String, Object> map, Model model) {
		int number = dao.FT_BDepreciationDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_BDepreciationDataList(map);
		}
	}
	
	// 감가 데이터 가져오기
	@Override
	public List<FT_Depreciation> FT_LDepreciationDataList(Map<String, Object> map, Model model) {
		int number = dao.FT_LDepreciationDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_LDepreciationDataList(map);
		}
	}
	
	// 감가 데이터 가져오기
	@Override
	public List<FT_Depreciation> FT_EDepreciationDataList(Map<String, Object> map, Model model) {
		int number = dao.FT_EDepreciationDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_EDepreciationDataList(map);
		}
	}
	
	// 감가 데이터 가져오기
	@Override
	public List<FT_Depreciation> FT_CDepreciationDataList(Map<String, Object> map, Model model) {
		int number = dao.FT_CDepreciationDataCnt(map); 
		if(number == 0) {
			return null;
		} else {
			return dao.FT_CDepreciationDataList(map);
		}
	}

	//예산계획현황검색결과
	@Override
	public List<FT_Plan_Result> getPlanResult(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		List<FT_Plan_Result> list = dao.getPlanResult(map);
		return list;
	}
	
	//예산현황상세조회
	@Override
	public void selectPlanDetail(HttpServletRequest req, Model model) {
		String budget_codes = req.getParameter("budget_codes");
		FT_Plan_Result vo = dao.getPlanDetail(budget_codes);
		
		model.addAttribute("dto", vo);
	}
	
	// 기획서 수정
	@Override
	public int updatePlan(Map<String, Object> map,HttpServletRequest req, Model model) {
		
		int cnt = dao.updatePlan(map);
		
		return cnt;
	}

	//기획서 삭제
	@Override
	public int deletePlan(Map<String, Object> map,HttpServletRequest req, Model model) {
		
		int cnt = dao.deletePlan(map);
		
		return cnt;
	}

	// 결산자료입력 리스트
	public FT_Total FT_TotalSelect(HttpServletRequest req, Model model) {
		int year = Integer.parseInt(req.getParameter("year"));
		int lastyear = Integer.parseInt(req.getParameter("year"))-1;
		int productsale = dao.FT_ProductSale(year);
		int jepumsale = dao.FT_JepumSale(year);
		int baseproduct = dao.FT_BaseProduct(lastyear);
		int nowproduct = dao.FT_NowProduct(year);
		int basesource = dao.FT_BaseSource(lastyear);
		int nowsource = dao.FT_NowSource(year);
		int basejegong = dao.FT_BaseJegong(lastyear);
		int basejepum = dao.FT_BaseJepum(lastyear);
		int basecost = dao.FT_BaseCost(year);
		int saleprofit = dao.FT_SaleProfit(year);
		int unsaleprofit = dao.FT_UnsaleProfit(year);
		int unsalecost = dao.FT_UnsaleCost(year);
		
		FT_Total list = new FT_Total();
		list.setProductsale(productsale);
		list.setJepumsale(jepumsale);
		list.setBaseproduct(baseproduct);
		list.setNowproduct(nowproduct);
		list.setBasesource(basesource);
		list.setNowsource(nowsource);
		list.setBasejegong(basejegong);
		list.setBasejepum(basejepum);
		list.setBasecost(basecost);
		list.setSaleprofit(saleprofit);
		list.setUnsaleprofit(unsaleprofit);
		list.setUnsalecost(unsalecost);
		return list;
	}
	
	// 결산분개
	public void FT_journalComplete(HttpServletRequest req, Model model) {
		String a = req.getParameter("endproduct");
		String b = req.getParameter("endsource");
		String c = req.getParameter("eqprice");
		String d = req.getParameter("ceqprice");
		String e = req.getParameter("endjegong");
		String f = req.getParameter("endjepum");
		String g = req.getParameter("buildingprice");
		String h = req.getParameter("landprice");
		String i = req.getParameter("noteprice");
		String j = req.getParameter("loanprice");
		String k = req.getParameter("notcatchprice");
		String l = req.getParameter("creditprice");
		String m = req.getParameter("bubin");
		Map<String, Object> map  = new HashMap<String, Object>();
		map.put("date", req.getParameter("years") + "-12-31");
		map.put("updateday", req.getParameter("years") + "-12-31");
		map.put("type", "4");
		map.put("wname", req.getSession().getAttribute("username"));
		map.put("fname", req.getSession().getAttribute("username"));
		map.put("leftcount", 0);
		map.put("rightcount", 0);
		map.put("year", req.getParameter("years"));
		map.put("month", "12");
		map.put("day", "31");
		map.put("accountcode", "0");
		int number = dao.FT_DateChitCnt(map); 
		if(number == 0) {
			number = 1;
		} else {
			number = dao.FT_ChitMaxNumber(map) + 1;
		}
		map.put("number", number);
		if(a != null && a != "") {
			map.put("text", "상품재고 결산분개");
			map.put("subjectcode", "sc00100"); // 코드넣기 매출원가
			map.put("leftprice", a);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "02ivt_00400"); // 코드넣기 상품
			map.put("leftprice", 0);
			map.put("rightprice", a);
			dao.FT_chitInsert(map);
		}
		if(b != null && b != "") {
			map.put("text", "원재료재고 결산분개");
			map.put("subjectcode", "sc00100"); // 코드넣기 매출원가
			map.put("leftprice", b);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "02ivt_00200"); // 코드넣기 원재료
			map.put("leftprice", 0);
			map.put("rightprice", b);
			dao.FT_chitInsert(map);
		}
		if(c != null && c != "") {
			map.put("text", "설비 감가상각 결산분개");
			map.put("subjectcode", "gamga_1140"); // 코드넣기 감가상각비
			map.put("leftprice", c);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "04ta_00701"); // 코드넣기 설비
			map.put("leftprice", 0);
			map.put("rightprice", c);
			dao.FT_chitInsert(map);
		}
		if(d != null && d != "") {
			map.put("text", "전산설비 감가상각 결산분개");
			map.put("subjectcode", "gamga_1140"); // 코드넣기 감가상각비
			map.put("leftprice", d);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "04ta_00101"); // 코드넣기 전산설비
			map.put("leftprice", 0);
			map.put("rightprice", d);
			dao.FT_chitInsert(map);
		}
		if(e != null && e != "") {
			map.put("text", "재공품재고 결산분개");
			map.put("subjectcode", "sc00100"); // 코드넣기 매출원가
			map.put("leftprice", e);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "02ivt_00300"); // 코드넣기 재공품
			map.put("leftprice", 0);
			map.put("rightprice", e);
			dao.FT_chitInsert(map);
		}
		if(f != null && f != "") {
			map.put("text", "제품재고 결산분개");
			map.put("subjectcode", "sc00100"); // 코드넣기 매출원가
			map.put("leftprice", f);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "02ivt_00100"); // 코드넣기 제품
			map.put("leftprice", 0);
			map.put("rightprice", f);
			dao.FT_chitInsert(map);
		}
		if(g != null && g != "") {
			map.put("text", "건물 감가상각 결산분개");
			map.put("subjectcode", "gamga_1140"); // 코드넣기 감가상각비
			map.put("leftprice", g);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "04ta_00301"); // 코드넣기 건물
			map.put("leftprice", 0);
			map.put("rightprice", g);
			dao.FT_chitInsert(map);
		}
		if(h != null && h != "") {
			map.put("text", "토지 감가상각 결산분개");
			map.put("subjectcode", "gamga_1140"); // 코드넣기 감가상각비
			map.put("leftprice", h);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "04ta_00201"); // 코드넣기 토지
			map.put("leftprice", 0);
			map.put("rightprice", h);
			dao.FT_chitInsert(map);
		}
		if(i != null && i != "") {
			map.put("text", "받을어음 대손상각 결산분개");
			map.put("subjectcode", "deson_1141"); // 코드넣기 대손상각비
			map.put("leftprice", i);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "01qa_00701"); // 코드넣기 받을어음
			map.put("leftprice", 0);
			map.put("rightprice", i);
			dao.FT_chitInsert(map);
		}
		if(j != null && j != "") {
			map.put("text", "단기대여금 결산분개");
			map.put("subjectcode", "deson_1141"); // 코드넣기 대손상각비
			map.put("leftprice", j);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "01qa_00801"); // 코드넣기 단기대여금
			map.put("leftprice", 0);
			map.put("rightprice", j);
			dao.FT_chitInsert(map);
		}
		if(k != null && k != "") {
			map.put("text", "미수금 결산분개");
			map.put("subjectcode", "deson_1141"); // 코드넣기 대손상각비
			map.put("leftprice", k);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "01qa_00901"); // 코드넣기 미수금
			map.put("leftprice", 0);
			map.put("rightprice", k);
			dao.FT_chitInsert(map);
		}
		if(l != null && l != "") {
			map.put("text", "외상매출금 결산분개");
			map.put("subjectcode", "deson_1141"); // 코드넣기 대손상각비
			map.put("leftprice", l);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "01qa_00601"); // 코드넣기 외상매출금
			map.put("leftprice", 0);
			map.put("rightprice", l);
			dao.FT_chitInsert(map);
		}
		if(m != null && m != "") {
			map.put("text", "법인세 결산분개");
			map.put("subjectcode", "03bis_00100"); // 코드넣기 법인세 차감 계정
			map.put("leftprice", m);
			map.put("rightprice", 0);
			dao.FT_chitInsert(map);
			map.put("subjectcode", "06cli_01000"); // 코드넣기 
			map.put("leftprice", 0);
			map.put("rightprice", m);
			dao.FT_chitInsert(map);
		}
	}
	
	
}
