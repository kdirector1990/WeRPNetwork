package com.pj.erp.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.pj.erp.persistence.MS_DAO;
import com.pj.erp.vo.HR.HR_VO;
import com.pj.erp.vo.MS.MS_plan;

// 경영지원
@Service
public class MS_ServiceImpl implements MS_Service {

	@Autowired
	MS_DAO dao;
	
	//기획서등록
	@Override
	public void insertPlan(MultipartHttpServletRequest req, Model model) {
		int insertCnt = 0;
		MultipartFile file = req.getFile("plan_proposal");
		
		String saveDir = req.getRealPath("/resources/ms_file/"); 
		/* F:\\dev50\\git\\WeRPNetwork\\ERPPJ_PJ\\src\\main\\webapp\\resources\\hr_img\\   
		 * 서버용 저장 경로*/
        String realDir="C:\\dev50\\workspace_PJ\\WeRPNetwork\\ERPPJ_PJ\\src\\main\\webapp\\resources\\ms_file\\"; // 저장 경로
 
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
			 
		
		MS_plan vo = new MS_plan();
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setPlan_regdate(new Timestamp(System.currentTimeMillis()));
		
		String sDate = req.getParameter("plan_startdate");
		sDate = sDate.replace("/", "-");
		
		String eDate = req.getParameter("plan_enddate");
		eDate = eDate.replace("/", "-");
		
		vo.setPlan_startdate(Date.valueOf(sDate));
		vo.setPlan_enddate(Date.valueOf(eDate));
		
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		vo.setPlan_proposal(file.getOriginalFilename());
		
		insertCnt = dao.insertPlan(vo);
		
        } catch(IOException e) {
            e.printStackTrace();
        }
        
        model.addAttribute("insertCnt", insertCnt);
	}

	//기획서 조회 - 사원이름으로 검색 결과가져오기
	@Override
	public List<MS_plan> selectPlan(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		List<MS_plan> vo = dao.getPlanList(username);
		model.addAttribute("vo", vo);
		return vo;
	}

	// 기획서 수정
	@Override
	public void updatePlan(HttpServletRequest req, Model model) {
		int updateCnt = 0;
		
		MultipartFile file = ((MultipartRequest) req).getFile("plan_proposal");
		
		String saveDir = req.getRealPath("/resources/ms_file/"); 
		/* F:\\dev50\\git\\WeRPNetwork\\ERPPJ_PJ\\src\\main\\webapp\\resources\\hr_img\\   
		 * 서버용 저장 경로*/
        String realDir="C:\\dev50\\workspace_PJ\\WeRPNetwork\\ERPPJ_PJ\\src\\main\\webapp\\resources\\ms_file\\"; // 저장 경로
 
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
			 
            
		MS_plan vo = new MS_plan();
		vo.setPlan_code(req.getParameter("plan_code"));
		vo.setPlan_name(req.getParameter("plan_name"));
		vo.setUsername(req.getParameter("username"));
		vo.setPosition_code(req.getParameter("position_code"));
		
		String sDate = req.getParameter("plan_startdate");
		sDate = sDate.replace("/", "-");
		
		String eDate = req.getParameter("plan_enddate");
		eDate = eDate.replace("/", "-");
		
		vo.setPlan_startdate(Date.valueOf(sDate));
		vo.setPlan_enddate(Date.valueOf(eDate));
		
		vo.setPlan_state(req.getParameter("plan_state"));
		vo.setPlan_objective(req.getParameter("plan_objective"));
		vo.setPlan_proposal(file.getOriginalFilename());
		
		updateCnt = dao.updatePlan(vo);
		
        } catch(IOException e) {
            e.printStackTrace();
        }
        
        model.addAttribute("updateCnt", updateCnt);
	}

	//기획서 삭제
	@Override
	public void deletePlan(HttpServletRequest req, Model model) {
		String plan_code = req.getParameter("plan_code");
		
		dao.deletePlan(plan_code);
	}

	//e_name(사원명)으로 username 찾기
	@Override
	public void searchUsername(HttpServletRequest req, Model model) {
		String e_name = req.getParameter("e_name");
		
		int cnt = dao.selectEname(e_name); 
		
		
		if(cnt > 0) {
			List<HR_VO> dto = dao.getUsernameList(e_name);
			model.addAttribute("dto", dto);
		}

		model.addAttribute("cnt", cnt);
	}

	//상세조회
	@Override
	public void selectPlanDetail(HttpServletRequest req, Model model) {
		String plan_code = req.getParameter("plan_code");
		MS_plan vo = dao.getPlanDetail(plan_code);
		
		model.addAttribute("dto", vo);
	}

}
