package com.pj.erp.service;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pj.erp.persistence.HR_DAO;

import com.pj.erp.vo.HR_PhysicalVO;

import com.pj.erp.vo.HR_PaystepVO;

import com.pj.erp.vo.HR_RankVO;
import com.pj.erp.vo.HR_VO;

@Service
public class HR_ServiceImpl implements HR_Service{

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	HR_DAO dao;
	
	Map<String, Object> map = new HashMap<String, Object>();
	
	// 인사정보등록
	@Override
	public void inputProHR1(MultipartHttpServletRequest req, Model model) {			
		MultipartFile file = req.getFile("e_picture");
        
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
		
		String username = req.getParameter("username");
		String e_name = "1234";
		String e_picture = file.getOriginalFilename();
		
		String password = passwordEncoder.encode(e_name);
		System.out.println(e_name);				
		
		vo.setUsername(username);
		vo.setPassword(password);
		vo.setE_picture(e_picture);
		vo.setE_name(e_name);
		vo.setE_gender(Integer.parseInt(req.getParameter("e_gender")));
		vo.setE_type(req.getParameter("e_type"));
		vo.setE_code(req.getParameter("e_code"));
		vo.setE_hp(req.getParameter("e_hp"));
		vo.setE_address1(req.getParameter("e_address1"));
		vo.setE_address2(req.getParameter("e_address2"));
		vo.setE_mailcode(req.getParameter("e_mailcode"));
		
		String level_step = "920";
		vo.setLevel_step(level_step);		
		
		vo.setE_nfcCodeNFC(req.getParameter("e_nfcCodeNFC"));
		vo.setE_disability_type(req.getParameter("e_disability_type"));
		vo.setE_disability_level(req.getParameter("e_disability_level"));
		vo.setStart_date(new Timestamp(System.currentTimeMillis()));				
		
		int cnt = 0;		
		
		cnt = dao.insertMember(vo);		
		dao.insertAuth();
		
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
        } catch(IOException e) {
            e.printStackTrace();
        }	
		
		
	}
	
	@Override
	public void inputProHR2(HttpServletRequest req, Model model) {
		HR_PhysicalVO vo = new HR_PhysicalVO();
		vo.setE_height(Integer.parseInt(req.getParameter("e_height")));
		vo.setE_weight(Integer.parseInt(req.getParameter("e_weight")));
		vo.setE_left_sight(Integer.parseInt(req.getParameter("e_left_sight")));
		vo.setE_right_sight(Integer.parseInt(req.getParameter("e_right_sight")));
		vo.setE_color_blind(req.getParameter("e_color_blind"));
		vo.setE_blood_type(req.getParameter("e_blood_type"));
		
		String e_blood_presure = "";
		String e_blood_presure1 = req.getParameter("e_blood_presure1");
		String e_blood_presure2 = req.getParameter("e_blood_presure2");
		e_blood_presure = e_blood_presure1 + "mmHg ~ " + e_blood_presure2 + "mmHg";
		vo.setE_blood_presure(e_blood_presure);		
		
		int cnt = 0;
		
		cnt = dao.insertPhysical(vo);
		model.addAttribute("cnt", 1);
		
		model.addAttribute("insertCnt", cnt);
		
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
		System.out.println(rank);
		List<HR_PaystepVO> vo = dao.pay(rank);
		System.out.println(vo.get(0).getBASE_PAYMENT());
		return vo;
		/*
		 * System.out.println(vo.get(1).getRank_code()); model.addAttribute("pay", vo);
		 */

	}	
	

	
	

}
