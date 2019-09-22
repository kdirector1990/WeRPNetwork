package com.pj.erp.service;


import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.HR_DAO;
import com.pj.erp.vo.HR.HR_ApVO;
import com.pj.erp.vo.HR.HR_FamilyVO;
import com.pj.erp.vo.HR.HR_GreetingVO;
import com.pj.erp.vo.HR.HR_PaystepVO;
import com.pj.erp.vo.HR.HR_PhysicalVO;
import com.pj.erp.vo.HR.HR_RankVO;
import com.pj.erp.vo.HR.HR_RecordVO;
import com.pj.erp.vo.HR.HR_SalaryVO;
import com.pj.erp.vo.HR.HR_Time_VO;
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.HR.HR_YearService_VO;
import com.pj.erp.vo.HR.HR_nfc_log;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

@Service
public class HR_ServiceImpl implements HR_Service{

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	HR_DAO dao;
	
	// 인사정보등록
	@Override
	public void inputFoundation(HttpServletRequest req, Model model) {			
		/*MultipartFile file = req.getFile("e_picture");
        
        String saveDir = req.getRealPath("/resources/hr_img/"); //저장 경로(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SPRING_BMS_Project\resources\images\)
        
        String realDir="C:\\Users\\KSM13\\git\\WeRPNetwork\\ERPPJ_PJ\\src\\main\\webapp\\resources\\hr_img"; // 저장 경로
        
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
		/*

	public void inputHRPro(HttpServletRequest req, Model model) {
		/*
		String pw = "1234";
		String e_picture = req.getParameter("e_picture");
		String e_name = req.getParameter("e_name");
		String e_gender = req.getParameter("e_gender");
		String e_type = req.getParameter("e_type");
		String e_code = req.getParameter("e_code");
		String e_hp = req.getParameter("e_hp");
		String e_address1 = req.getParameter("e_address1");
		String e_address2= req.getParameter("e_address2");
		String e_nfcCodeNFC= req.getParameter("e_nfcCodeNFC");
		String e_disability_type= req.getParameter("e_disability_type");
		String e_disability_level= req.getParameter("e_disability_level");
		String e_height= req.getParameter("e_height");
		String e_weight= req.getParameter("e_weight");
		String e_left_sight= req.getParameter("e_left_sight");
		String e_right_sight= req.getParameter("e_right_sight");
		String e_color_blind= req.getParameter("e_color_blind");
		String e_blood_type= req.getParameter("e_blood_type");
		String e_blood_pressure1= req.getParameter("e_blood_pressure1");
		String e_blood_pressure2= req.getParameter("e_blood_pressure2");		
		
		
		*/		
		
		HR_VO vo = new HR_VO();		
		
		String username = dao.getUsername();
		String e_name = "1234";
		// String e_picture = file.getOriginalFilename();
		
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);				
		int e_gender = Integer.parseInt(req.getParameter("e_gender"));
		
		vo.setUsername(username);
		vo.setPassword(password);
		// vo.setE_picture(e_picture);
		vo.setE_name(e_name);
		vo.setE_gender(e_gender);
		vo.setE_type(req.getParameter("e_type"));
		vo.setE_code(req.getParameter("e_code"));
		vo.setE_hp(req.getParameter("e_hp"));
		
		String e_address = "";
		String e_address1 = req.getParameter("e_address1");
		String e_address2 = req.getParameter("e_address2");
		
		e_address = e_address1 + "/" + e_address2;
		vo.setE_address(e_address);
		
		vo.setE_mailcode(req.getParameter("e_mailcode"));
		
		vo.setLevel_step(Integer.parseInt(req.getParameter("level_step")));		
		
		vo.setE_nfcCodeNFC(req.getParameter("e_nfcCodeNFC"));		
		vo.setStart_date(new Timestamp(System.currentTimeMillis()));
		String department_code = req.getParameter("department_code");
		String position_code = req.getParameter("position_code");
		String rank_code = req.getParameter("rank_code");
		
		vo.setDepartment_code(department_code);
		vo.setPosition_code(position_code);
		vo.setRank_code(rank_code);
		
		int enabled = 1;
		vo.setEnabled(enabled);
		
		HR_FamilyVO vo2 = new HR_FamilyVO();
		
		String f_name = " ";
		String f_type = " ";		
		
		vo2.setUsername(username);
		vo2.setF_name(f_name);
		vo2.setF_type(f_type);		
		vo2.setF_born(new Timestamp(System.currentTimeMillis()));		
		
		int cnt = 0;		
		
		cnt = dao.insertMember(vo);		
		dao.insertAuth();
		dao.insertPhysical(username);
		dao.insertFamily(vo2);
		
		model.addAttribute("cnt", 1);		
		model.addAttribute("insertCnt", cnt);		
		
		/*
		int i=0;
		do {
			String f_name = req.getParameter("f_name"+i);
			String f_type = req.getParameter("f_type"+i);
			String f_cohabitation = req.getParameter("f_cohabitation"+i);
			String f_born = req.getParameter("f_born"+i);
			String f_born_type = req.getParameter("f_born_type"+i);
			
			//insert 하는기능 넣으면됨
			System.out.println(f_name);
			System.out.println(f_type);
			System.out.println(f_cohabitation);
			System.out.println(f_born);
			System.out.println(f_born_type);
			
			i++;
		}while(req.getParameter("f_name"+i)!=null);
		
		*/		
		

		//String password = passwordEncoder.encode(pw);
		//System.out.println(e_name);
		//map.put("password", password);
		//map.put("e_name", e_name);
		
		//dao.insertMember(map);
		//dao.insertAuth();
        /*} catch(IOException e) {
            e.printStackTrace();
        }	
		*/		
	}	
	
	

	//호봉테이블(직급)
	@Override
	public void selectRank(HttpServletRequest req, Model model) {
		List<HR_RankVO> vo = dao.rank();
		
		model.addAttribute("vo", vo);
	}	

	//호봉테이블(호봉)
	@Override
	public List<HR_PaystepVO> selectMoney(HttpServletRequest req, Model model) {
		String rank = req.getParameter("rank_code");
		List<HR_PaystepVO> vo = dao.pay(rank);
		return vo;
	}

	//호봉테이블(호봉수정)
	@Override
	public int updateMoney(HttpServletRequest req, Model model) {
		int i = 0;
		int updateCnt = 0;
		HR_PaystepVO vo = new HR_PaystepVO();
		do{
			//화면에서 값 입력
			int paystep_code = Integer.parseInt(req.getParameter("paystep_code"+i));
			String rank_code = req.getParameter("rank_code");
			String base = req.getParameter("BASE_PAYMENT"+i);
			String add = req.getParameter("ADD_PAYMENT"+i);
			String Extension = req.getParameter("EXTENSION_PAYMENT"+i);

			//콤마제거
			int BASE_PAYMENT = Integer.parseInt(base.replace(",", ""));
			int ADD_PAYMENT = Integer.parseInt(add.replace(",", ""));
			int EXTENSION_PAYMENT = Integer.parseInt(Extension.replace(",", ""));
			
			vo.setPaystep_code(paystep_code);
			vo.setRank_code(rank_code);
			vo.setBASE_PAYMENT(BASE_PAYMENT);
			vo.setADD_PAYMENT(ADD_PAYMENT);
			vo.setEXTENSION_PAYMENT(EXTENSION_PAYMENT);
			
			updateCnt= dao.updatePay(vo);
			
			i++;
		}while(req.getParameter("paystep_code"+i) != null);
		/*
		 * System.out.println(vo.get(1).getRank_code()); model.addAttribute("pay", vo);
		 */
		
		return updateCnt;
	}
	
	// 부서 등록
	@Override
	public void inputDepartmentPro(HttpServletRequest req, Model model) {
		String department_code = req.getParameter("department_code");
		String department_name = req.getParameter("department_name");
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("department_code", department_code);
		map.put("department_name", department_name);
		
		dao.insertDepartment(map);
		
	}

	@Override
	public List<HR_GreetingVO> getGreeting(Map<String,Object> map, HttpServletRequest req, Model model) throws java.text.ParseException {
		
		String pa_dates = (String)map.get("pa_date");
		String pa_sDate = pa_dates.substring(0, 10);
		String pa_eDate = pa_dates.substring(13, 23);
		
		String syear = pa_sDate.substring(8,10);
		String smonth = pa_sDate.substring(0,2);
		String sday = pa_sDate.substring(3,5);
		
		String eyear = pa_eDate.substring(8,10);
		String emonth = pa_eDate.substring(0,2);
		String eday = pa_eDate.substring(3,5);
		
		String spa_date = syear + "/" + smonth +"/" +sday;
		String epa_date = eyear + "/" + emonth +"/" +eday;
		
		map.put("spa_date", spa_date);
		map.put("epa_date", epa_date);
		
		List<HR_GreetingVO> list = dao.getGreeting(map);
		return list;
	}
	
	@Override
	public List<HR_SalaryVO> getSalary(Map<String,Object> map, HttpServletRequest req, Model model) throws java.text.ParseException {
		
		List<HR_SalaryVO> list = dao.getSalary(map);
		
		return list;
	}
	
	@Override
	public void departmentList(HttpServletRequest req, Model model) {
		
		Map<String, Object> map = new HashMap<String, Object>();		
		List<HR_VO> dep = dao.getDepartmentList(map);
		
		model.addAttribute("dep", dep);		
	}	
	
	@Override
	public void positionList(HttpServletRequest req, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();		
		List<HR_VO> poi = dao.getPositionList(map);
		
		model.addAttribute("poi", poi);
		
	}

	@Override
	public void rankList(HttpServletRequest req, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();		
		List<HR_VO> rank = dao.getRankList(map);
		
		model.addAttribute("rank", rank);
		
	}

	@Override
	public void selectFoundation(HttpServletRequest req, Model model) {
		List<HR_VO> vo = dao.foundation();
		
		model.addAttribute("vo", vo);		
	}

	@Override
	public void selectPhysical(HttpServletRequest req, Model model) {
		List<HR_PhysicalVO> phy = dao.physicalyList();
		
		model.addAttribute("phy", phy);
	}
	
	@Override
	public void modifyFoundationView(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		HR_VO vo = dao.getFoundation(username);
		
		model.addAttribute("vo", vo);
	}


	@Override
	public void modifyFoundationPro(HttpServletRequest req, Model model) {
		HR_VO vo = new HR_VO();
		String username = req.getParameter("username");
		int e_gender = Integer.parseInt(req.getParameter("e_gender"));
		
		vo.setUsername(username);		
		vo.setE_gender(e_gender);
		vo.setE_type(req.getParameter("e_type"));
		vo.setE_code(req.getParameter("e_code"));
		vo.setE_hp(req.getParameter("e_hp"));
		
		String e_address = "";
		String e_address1 = req.getParameter("e_address1");
		String e_address2 = req.getParameter("e_address2");
		
		e_address = e_address1 + "/" + e_address2;
		vo.setE_address(e_address);
		
		vo.setE_mailcode(req.getParameter("e_mailcode"));
		
		vo.setLevel_step(Integer.parseInt(req.getParameter("level_step")));		
		
		vo.setE_nfcCodeNFC(req.getParameter("e_nfcCodeNFC"));		
		String department_code = req.getParameter("department_code");
		String position_code = req.getParameter("position_code");
		String rank_code = req.getParameter("rank_code");
		
		vo.setDepartment_code(department_code);
		vo.setPosition_code(position_code);
		vo.setRank_code(rank_code);
		
		int updateCnt = dao.updateFoundation(vo);           
        
        model.addAttribute("updateCnt", updateCnt);
        model.addAttribute("username", username);
	}


	@Override
	public void modifyPhysicalyView(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		HR_PhysicalVO pvo = dao.getPhysicaly(username);
		
		model.addAttribute("pvo", pvo);
	}

	@Override
	public void modifyPhysicalyPro(HttpServletRequest req, Model model) {
		
		HR_PhysicalVO vo = new HR_PhysicalVO();
		String username = req.getParameter("username");
		System.out.println(username);
		vo.setUsername(username);
		vo.setE_height(Integer.parseInt(req.getParameter("e_height")));
		vo.setE_weight(Integer.parseInt(req.getParameter("e_weight")));
		vo.setE_left_sight(Integer.parseInt(req.getParameter("e_left_sight")));
		vo.setE_right_sight(Integer.parseInt(req.getParameter("e_right_sight")));
		vo.setE_color_blind(req.getParameter("e_color_blind"));
		vo.setE_blood_type(req.getParameter("e_blood_type"));
		String e_blood_presure = "";
		String e_blood_presure1 = req.getParameter("e_blood_presure1");
		String e_blood_presure2 = req.getParameter("e_blood_presure2");
		e_blood_presure = e_blood_presure1 + "/" + e_blood_presure2 + "mmHg";
		
		vo.setE_blood_presure(e_blood_presure);
		vo.setE_medical_info(req.getParameter("e_medical_info"));
		vo.setE_veteran_type(Integer.parseInt(req.getParameter("e_veteran_type")));
		vo.setE_veteran_info(req.getParameter("e_veteran_info"));
		vo.setE_veteran_level(req.getParameter("e_veteran_level"));
		vo.setE_disability_type(req.getParameter("e_disability_type"));
		vo.setE_disability_level(req.getParameter("e_disability_level"));
		
		int updateCnt = dao.updatePhysicaly(vo);           
        
        model.addAttribute("updateCnt", updateCnt);
        model.addAttribute("username", username);
		
	}
	
	// 가족정보 상세페이지
	@Override
	public void modifyFamilyView(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		HR_FamilyVO vo = dao.getFamily(username);
		
		model.addAttribute("vo", vo);
		
	}
	
	// 가족정보 수정 처리
	@Override
	public void modifyFamilyPro(HttpServletRequest req, Model model) {
		HR_FamilyVO vo = new HR_FamilyVO();
		String username = req.getParameter("username");
		
		vo.setUsername(username);
		vo.setF_name(req.getParameter("f_name"));
		vo.setF_type(req.getParameter("f_type"));
		vo.setF_cohabitation(req.getParameter("f_cohabitation"));		
		vo.setF_born_type(req.getParameter("f_born_type"));
	}
	
	@Override
	public List<HR_VO> getUsers(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException {
		
		
		List<HR_VO> list = dao.getUsers(map); 
		return list;
					
	}



	@Override
	public List<HR_PhysicalVO> getPhysical(Map<String, Object> map, HttpServletRequest req, Model model) throws ParseException {
		List<HR_PhysicalVO> list = dao.getPhysicaly(map);
		return list;
	}


	//근태(사원목록 가져오기)
	@Override
	public List<HR_Time_VO> selectUserHR(HttpServletRequest req, Model model) {
		
		String username = req.getParameter("username");
		String department_code = req.getParameter("department_code");

		String e_name = req.getParameter("e_name");
		Map<String, Object> map = new HashMap<>();
		map.put("department_code", department_code);
		map.put("e_name", e_name);
		map.put("username", username);

		List<HR_Time_VO> vo = dao.selectUserTime(map);
		
		return vo;
	}

	//근태(출근 입력)
	@Override
	public int InsertStartWork(HttpServletRequest req, Model model) {
		int insertCnt = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		
		String [] username = req.getParameterValues("username");
		
		for(int i = 0; i < username.length; i ++) {
			map.put("username", username[i]);
			int users = dao.selectWork(map);
			System.out.println("작동");
			if(users == 0) {
				System.out.println("작동2");
				insertCnt = dao.StartWork(username[i]);
			}
		}
		
		return insertCnt;
	}

	//근태(퇴근 입력)
	@Override
	public int InsertEndWork(HttpServletRequest req, Model model) {

		int updateCnt = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		
		String [] username = req.getParameterValues("username");
		
		for(int i = 0; i < username.length; i++) {
			map.put("username", username[i]);
			int users = dao.selectEndWork(map);
			
			if(users == 0) {
				updateCnt = dao.EndWork(username[i]);
			}
		}
		
		System.out.println(updateCnt);
		return updateCnt;
	}



	@Override
	public List<HR_YearService_VO> getYearofservice(Map<String, Object> map, HttpServletRequest req, Model model)
			throws java.text.ParseException {
		List<HR_YearService_VO> list = dao.getYearofservice(map);
		return list;
	}

	//근태(근무일별 목록 가져오기)
	@Override
	public List<HR_Time_VO> DetailUserWork(HttpServletRequest req, Model model) {
		
		int cnt = 0;
		int i = 1;
		
		String month;
		List<HR_Time_VO> dto = new ArrayList<>();
		List<HR_Time_VO> dtos = null;
		
		String username = req.getParameter("username");
		
		Calendar c = Calendar.getInstance();
		String year = String.valueOf(c.get(Calendar.YEAR));
		System.out.println(year);
		String years= year.substring(2);
		
		
		do {
			if(i < 10) {
				month = "0"+i;
			}
			else {
				month = ""+i;
			}
			HR_Time_VO vo = new HR_Time_VO();
			vo.setUsername(username);
			vo.setYear(years);
			vo.setMonth(month);
			System.out.println(month);
			cnt = dao.DetailWork(vo);
			if(cnt != 0) {
				System.out.println();
				System.out.println("갯수 : " + cnt);
				System.out.println("년도 : " + vo.getYear());
				System.out.println("사원번호 : " + vo.getUsername());
				System.out.println("월 : " + vo.getMonth());
				dtos = dao.SelectDetailWork(vo);
				
				System.out.println(" -------------------- 구분선 ----------------------");
				System.out.println(" dtos.size() : " + dtos.size());
				System.out.println(" -------------------- 구분선 ---------- ------------");
				
				
				for (int j = 0; j < dtos.size(); j++) {
					HR_Time_VO temp = dtos.get(j);
					
					System.out.println("temp.toString() : " + temp.toString());
					
					dto.add(temp);
				}
				
				System.out.println("작동");
				cnt = 0;
			}
			i++;
		}while(i < 13);
		
		return dto;
	}
	
	// 인사발령 등록
	@Override
	public void HR_recordinput(HttpServletRequest req, Model model) {
		
		HR_RecordVO vo = new HR_RecordVO();		
		
		String username = req.getParameter("username");
		String position_code = req.getParameter("position_code");
		String position_code_after = req.getParameter("position_code_after");
		String position_record_code = dao.getPositionRecord();
		Date record_date = (Date.valueOf(req.getParameter("record_date")));
		Date record_date_after = (Date.valueOf(req.getParameter("record_date_after")));
		String ap_code = "";
		
		
		vo.setUsername(username);
		vo.setPosition_code(position_code);
		vo.setPosition_code_after(position_code_after);
		vo.setPosition_record_code(position_record_code);
		vo.setRecord_date(record_date);		
		vo.setRecord_date_after(record_date_after);
		
		int cnt = 0;
		
		cnt = dao.recordInput(vo);
		
		model.addAttribute("cnt", 1);		
		model.addAttribute("insertCnt", cnt);		
	}
	
	@Override
	public void HR_APinput(HttpServletRequest req, Model model) {
		int i = 0;
		
		HR_ApVO ap = new HR_ApVO();
		
		String ap_code = dao.getAP_code();
		String ap_name = req.getParameter("ap_name");
		String ap_content = req.getParameter("ap_content");	
		
		System.out.println(req.getParameter("ap_reg_date"));
		System.out.println(req.getParameter("ap_est_date"));
		
		ap.setAp_code(ap_code);
		ap.setAp_name(ap_name);
		ap.setAp_content(ap_content);
		ap.setAp_reg_date(Date.valueOf(req.getParameter("ap_reg_date"))); 
		ap.setAp_est_date(Date.valueOf(req.getParameter("ap_est_date")));
		ap.setAp_status(req.getParameter("ap_status"));		
		
		int cnt = 0;		
		
		cnt = dao.insertAp(ap);
		
		model.addAttribute("cnt", 1);		
		model.addAttribute("insertCnt", cnt);
		
	}

	@Override
	public HR_VO HR_select_username(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		System.out.println(username);
		
		HR_VO data = dao.getFoundation(username);
		
		return data;
	}

	//근태(월별 카운트)
	@Override
	public List<HR_Time_VO> selectCountMonth(HttpServletRequest req, Model model) {
		
		String username = req.getParameter("username");
		
		List<HR_Time_VO> dto = new ArrayList<>();
		HR_Time_VO sel = new HR_Time_VO();
		
		//올해 년, 월 입력부분.
		Calendar c = Calendar.getInstance();
		String year = String.valueOf(c.get(Calendar.YEAR));
		System.out.println(year);
		String years= year.substring(2);
		String month;
		
		//월 카운트를 위한 변수
		int i = 1;
		int cnt = 0;
		
		do {
			if(i < 10) {
				month = "0"+i;
			}
			else {
				month = ""+i;
			}
			HR_Time_VO vo = new HR_Time_VO();
			vo.setUsername(username);
			vo.setYear(years);
			vo.setMonth(month);
			
			sel = dao.DetailWork2(vo);
			dto.add(sel);
			
			i++;
		}
		while(i < 13);
		
		return dto;
	}

	@Override
	public HR_PhysicalVO HR_select_physical(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		HR_PhysicalVO data = dao.physicaly(username);
		
		return data;
	}
	
	@Override
	public List<HR_nfc_log> getNfcLog(HttpServletRequest req, Model model) {
		
		List<HR_nfc_log> nfc_log = dao.getNfcLog();
		
		
		return nfc_log;
	}
	
	@Override
	public List<HR_VO> getPositions(Map<String,Object> map, HttpServletRequest req, Model model) throws ParseException {
		
		
		List<HR_VO> list = dao.getPositions(map); 
		return list;
					
	}

	//부서조회
	@Override
	public List<HR_VO> getDepartment(HttpServletRequest req, Model model){
		
		String department_name = req.getParameter("department_name");
		String department_code = req.getParameter("department_code");
		
		Map<String, Object> map = new HashMap<>();
		map.put("department_name", department_name);
		map.put("department_code", department_code);
		
		List<HR_VO> list = dao.getDepartmentCodeName(map);
		
		return list;
	}
	
	//사이드바 출근
	@Override
	public int sidebarWorkStart(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		int insertCnt = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("username", username);
		int users = dao.selectWork(map);		
		if(users == 0) {
			System.out.println("작동2");
			insertCnt = dao.StartWork(username);
		}
		
		return insertCnt;
	}


	//사이드바 퇴근
	@Override
	public int sidebarEndWork(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		
		int updateCnt = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("username", username);
		int users = dao.selectEndWork(map);
		
		if(users == 0) {
			updateCnt = dao.EndWork(username);
		}
		
		return updateCnt;
	}

}
