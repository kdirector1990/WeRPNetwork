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
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_accounts_balance;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO; 
import com.pj.erp.vo.HR.HR_VO; 

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
		System.out.println(Integer.parseInt(map.get("month").toString()));
		if(Integer.parseInt(map.get("month").toString()) < 10) {
			map.put("month","0" + Integer.parseInt(map.get("month").toString()));
		}
		int number = dao.FT_chitDataCnt(map); 
		System.out.println(number);
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
		System.out.println("keycode : " + req.getParameter("keynum"));
		if(keycode != null) {
			String date = req.getParameter("date" + keycode);
			String no = req.getParameter("no" + keycode);
			String year = date.substring(0, 4);
			String month = date.substring(5,7);
			String day = date.substring(8, 10);
			System.out.println("no : " + no);
			System.out.println("date : " + year + "-" + month + "-" + day);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("chkno", no);
			map.put("year", year);
			map.put("month", month);
			map.put("day", day);
			
			List<FT_Chit> list = dao.FT_chitDataLoad(map);
			System.out.println("size : " + list.size());
			
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

        System.out.println("1");
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
		System.out.println("customerCode : " + account.get(0).getCustomer_code());
		model.addAttribute("account", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public FT_Account FT_AccountOneSelect(HttpServletRequest req) {
		FT_Account ac = dao.FT_AccountOneSelect(req.getParameter("srhval"));
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
		System.out.println(savings);
		System.out.println(savings.size());
		model.addAttribute("deposit", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}

	// 예금 검색한 것 가져오기
	@Override
	public List<FT_Deposit> FT_DepositSelect(HttpServletRequest req, Model model) {
		List<FT_Deposit> tf = dao.FT_DepositSelect(req.getParameter("srhval"));
		System.out.println(tf);
		System.out.println(req.getParameter("srhval"));
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
	
	// 예금가져오기
	@Override
	public void FT_CardManagementSelect(HttpServletRequest req, Model model) {
		List<FT_Card> savings = dao.FT_CardManagementSelect();
		model.addAttribute("saving", savings);
		model.addAttribute("listsize", savings.size() + 1);
	}
	
	// 예금추가
	@Override
	public String FT_CardManagementInsert(Map<String, Object> map) {
		int result = dao.FT_CardManagementInsert(map);
		if(result != 0) {
			return dao.FT_CardManagementKeySelect();
		} else {
			return "insert 실패";
		}
	}

	// 예금수정
	@Override
	public String FT_CardManagementUpdate(Map<String, Object> map) {
		if(dao.FT_CardManagementUpdate(map) != 0) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 예금삭제
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

	// 중계정과목 가져오기
	@Override
	public void FT_AccSubjectAllSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> subject = dao.FT_AccSubjectAllSelect();
		System.out.println("AccountCode : " + subject.get(0).getAccounts_code());
		model.addAttribute("subject", subject);
		model.addAttribute("listsize", subject.size() + 1);
	}
	
	// 중계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_AccSubjectSelect(HttpServletRequest req, Model model) {
		List<FT_Subject> tf = dao.FT_AccSubjectSelect(req.getParameter("srhval"));
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
		System.out.println("list : " + list);
		return list;
	}
	
	// 거래처원장 리스트
	public List<FT_Chit> FT_ledgerAccList(Map<String, Object> map, Model model) {
		List<FT_Chit> list = dao.FT_ledgerAccList(map);
		System.out.println("list : " + list);
		return list;
	}
	
	// 일별 리스트
	public List<List<FT_DTB>> FT_DTBDayList(Map<String, Object> map, Model model) {
		int year = Integer.parseInt(map.get("firstday").toString().substring(0, 4));
		String month = map.get("firstday").toString().substring(5,7);
		String day = map.get("firstday").toString().substring(8,10);
		System.out.println("year" + year + "month" + month + "day" + day);
		
		List<FT_DTB> listL = dao.FT_DTBDayListL(map);
		List<FT_DTB> listM = dao.FT_DTBDayListM(map);
		List<FT_DTB> listS = dao.FT_DTBDayListS(map);
		System.out.println("listL : " + listL);
		System.out.println("listM : " + listM);
		System.out.println("listS : " + listS);
		List<List<FT_DTB>> list = new ArrayList<List<FT_DTB>>();
		list.add(listL);
		list.add(listM);
		list.add(listS);
		String rootPath = System.getProperty("user.dir");
        System.out.println("현재 프로젝트의 경로 : "+rootPath );

		return list;
	}
	
	// 월별 리스트
	public List<List<FT_DTB>> FT_DTBMonthList(Map<String, Object> map, Model model) {
		int year = Integer.parseInt(map.get("firstday").toString().substring(0, 4));
		String month = map.get("firstday").toString().substring(5,7);
		map.put("day", String.valueOf((new Date(year, Integer.parseInt(month), 0)).getDate()));
		map.put("firstday", map.get("firstday").toString());
		map.put("lastday", map.get("lastday").toString());
		System.out.println("year : " + year + ", month : " + month);
		
		List<FT_DTB> listL = dao.FT_DTBMonthListL(map);
		List<FT_DTB> listM = dao.FT_DTBMonthListM(map);
		List<FT_DTB> listS = dao.FT_DTBMonthListS(map);
		System.out.println("listL : " + listL);
		System.out.println("listM : " + listM);
		System.out.println("listS : " + listS);
		List<List<FT_DTB>> list = new ArrayList<List<FT_DTB>>();
		list.add(listL);
		list.add(listM);
		list.add(listS);
		return list;
	}
	
	// 승인처리
	@Override
	public String FT_CheckFormal(Map<String, Object> map, Model model) {
		String[] datelist = map.get("dates").toString().split("/");
		String[] nolist = map.get("nos").toString().split("/");
		for(int i = 0; i<datelist.length; i++) {
			System.out.println("리스트 : " + datelist[i]);
			System.out.println("number리스트 : " + nolist[i]);
			System.out.println("username : " + map.get("username"));
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
		System.out.println("1: "+assets_list.get(0).getAccount_name());
		
		typename = "부채";
		List<FT_accounts_balance> liab_list = dao.FT_getAssetsList(typename);
		bs_result.put("liab_list", liab_list);

		typename = "자본";
		List<FT_accounts_balance> capit_list = dao.FT_getAssetsList(typename);
		bs_result.put("capit_list", capit_list);
		System.out.println("1: "+capit_list.get(0).getAccount_name());
		
		int left_max = assets_list.size();
		int right_max = liab_list.size()+capit_list.size(); 
		int maxsize= left_max;
		if(left_max<=right_max) {
			maxsize = right_max;
		}
		
		System.out.println("result max: "+ maxsize );
		 
		
		return bs_result;
	}
	
	@Override
	public Map<String, Object> getIsshit(Map<String, Object> map, HttpServletRequest req, Model model)
			throws ParseException {
		Map<String, Object> is_result = new HashMap<String, Object>();
		
		
		return null;
	}
	
	// 건물 추가
	@Override
    public void FT_BuildingInsert(HttpServletRequest req, Model model) {
        FT_Building vo = new FT_Building();
        int insertCnt = dao.FT_BuildingInsert(vo);
        
        model.addAttribute("cnt", insertCnt);
            
		/*
		 * } catch(IOException e) { e.printStackTrace(); }
		 */
        
    }
	
	// 건물 수정
	@Override
	public String FT_BuildingUpdate(Map<String, Object> map) {
		int result = dao.FT_BuildingUpdate(map);
		if(result != 0) {
			return "성공";
		} else {
			return "insert 실패";
		}
	}
	
	// 건물 삭제
	@Override
	public String FT_BuildingDelete(Map<String, Object> map) {
		int result = dao.FT_BuildingDelete(map);
		if(result != 0) {
			return "성공";
		} else {
			return "insert 실패";
		}
	}

	// 건물 가져오기
	@Override
	public void FT_BuildingAllSelect(HttpServletRequest req, Model model) {
		List<FT_Building> account = dao.FT_BuildingAllSelect();
		model.addAttribute("account", account);
		model.addAttribute("listsize", account.size() + 1);
	}
	
	// 건물 검색한 것 가져오기
	@Override
	public FT_Building FT_BuildingOneSelect(HttpServletRequest req) {
		FT_Building ac = dao.FT_BuildingOneSelect(req.getParameter("srhval"));
		System.out.println(ac);
		return ac;
	}

	// 건물 검색한 것 가져오기
	@Override
	public List<FT_Building> FT_BuildingSelect(HttpServletRequest req) {
		List<FT_Building> ac = dao.FT_BuildingSelect(req.getParameter("srhval"));
		System.out.println(ac);
		return ac;
	}
}
