package com.pj.erp.service;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.persistence.HR_DAO;
import com.pj.erp.vo.ProductVO;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.HR.HR_nfc_log;

@Service
public class ERPServiceImpl implements ERPService{
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	ERPDAO dao;
	
	@Autowired
	HR_DAO dao2;
	
	@Autowired
	ERPDAO dao3;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public void testreg(HttpServletRequest req, Model model) {
		
		HR_VO vo = new HR_VO();
		String e_name = "1234";
		
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);
		vo.setPassword(password);
		vo.setE_name(e_name);
		
		dao2.insertMember2(vo);
		dao2.insertAuth();
		
		
		
	}
	
	@Override
	public void nfc(HttpServletRequest req, Model model) {
		String nfcid = req.getParameter("nfcid");
 
		Map<String, Object> map = new HashMap<>();
		dao.nfc(nfcid); 
 
 
		System.out.println("작동");
		HR_nfc_log nfc= dao.selectNfc(nfcid);
		System.out.println("nfc_code : " + nfcid);
		System.out.println("작동2");
		
		String come = nfc.getMin();
		System.out.println(come);
		String leave = nfc.getMax();
		
		String comeTime="";
		String comeDay = come.substring(0, 8);
		if(come.substring(8, 9) == "0") {
			comeTime = come.substring(9, 12);
		}else {
			comeTime = come.substring(8, 12);
		}
		
		String leaveTime = leave.substring(8, 12);
		
		
		System.out.println("등교시간 : " + comeDay);
		
		System.out.println("comeTime : " + comeTime);
		
		Calendar c = Calendar.getInstance();
		String year = String.valueOf(c.get(Calendar.YEAR));
		
		System.out.println(year);
		String month = String.valueOf(c.get(Calendar.MONTH) + 1);
		String day = String.valueOf(c.get(Calendar.DAY_OF_MONTH));
		
		int time = 90000;
		int end = 1800;
		
		int mon = c.get(Calendar.MONTH) + 1;
		if(mon < 10) {
			month = "0"+month;
		}
		
		
		
		String today = year+ month+ day;
		System.out.println("오늘 " + today);

		String username = nfc.getUsername();
		
		System.out.println("유저네임 : " + nfc.getUsername());
		
		map.put("username", username);
		System.out.println("if문 전");
		System.out.println("today" + today);
		
		int leaves = Integer.parseInt(leaveTime);
		System.out.println("comeday" + comeDay);
		
		System.out.println("퇴근시간 : " + leaves);
		
		int todays = Integer.parseInt(today);
		int comeDays = Integer.parseInt(comeDay);
		
		int Hour = c.get(Calendar.HOUR_OF_DAY);
		System.out.println("파스했음.");
		
		if(todays == comeDays) {
			System.out.println("if문");
			int cometime = Integer.parseInt(comeTime);
			if(leaves < end) {
				int selectCnt2 = dao2.selectEndWork(map);
				if(selectCnt2 == 0) {
					int insertCnt2 = dao2.ealryWorkEnd(username);
					System.out.println("조퇴합니다.");
					if(insertCnt2 == 0) {
						if(Hour > 9) {
							dao2.lateWorkStart(username);
							System.out.println("지각했습니다.");
						}
						else {
							dao2.StartWork(username);
							System.out.println("정상출근입니다.");
						}
					}
				}
				else if(selectCnt2 == 1) {
					if(Hour > 18) {
						System.out.println("정상퇴근처리");
						dao2.EndWork(username);
					}
					else {
						System.out.println("여전히 조퇴");
						dao2.ealryWorkEnd(username);
					}
				}
			}
			else if(leaves > end) {
				int selectCnt2 = dao2.selectEndWork(map);
				System.out.println("퇴근인원 확인");
				if(selectCnt2 == 0) {
					int insertCnt2 = dao2.EndWork(username);
					System.out.println("퇴근 update");
					if(insertCnt2 == 0) {
						System.out.println("이미 퇴근한 사원입니다.");
					}
				}
			}
			else if(cometime < time) {
				int selectCnt = dao2.selectWork(map);
				System.out.println(selectCnt);
				System.out.println("출근인원 확인");
				if(selectCnt == 0) {
					int insertCnt = dao2.StartWork(username);
					System.out.println("출근 insert");
					if(insertCnt == 0) {
						System.out.println("이미 출근한 사람입니다.");
					}
				}
			}
		}
 
	}

	//구매
	@Override
	public void productList(HttpServletRequest req, Model model) {
		List<ProductVO> dto = dao.getProductList();
		
		model.addAttribute("dto", dto);
	}
	
	public List<HashVO> selectDept(HttpServletRequest req, Model model) {
		String department_code = req.getParameter("d_name");
		List<HashVO> vo = dao.selectHashDept(department_code);
		return vo;
	}
	
	
	
	
}
