package com.pj.erp.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pj.erp.persistence.ST_DAO;
import com.pj.erp.vo.ST.Estimate;
import com.pj.erp.vo.ST.Release;
import com.pj.erp.vo.ST.SalePlan;

@Service
public class ST_ServiceImpl implements ST_Service {

	@Autowired
	ST_DAO dao;
	
	// ST_estimate 글 쓰기 페이지
	@Override
	public void estimatewritePro(HttpServletRequest req, Model model) {
		Estimate vo = new Estimate();
		vo.setEp_code(req.getParameter("ep_code"));
		vo.setEp_amount(Integer.parseInt(req.getParameter("ep_amount")));
		vo.setEp_deliver_date(Date.valueOf(req.getParameter("ep_deliver_date")));
		vo.setEp_price(Integer.parseInt(req.getParameter("ep_price")));
		vo.setEp_reg_date(new Date(System.currentTimeMillis()));
		
		int estimatewrite = dao.estimatewritePro(vo);
		
		model.addAttribute("estimatewrite", estimatewrite);
		
		
	}
	
	// ST_estimate_price 글 목록
	@Override
	public void estimateTBL(HttpServletRequest req, Model model) {
		/*
		 * // 바구니 생성 Estimate vo = new Estimate();
		 * 
		 * vo.setEp_code(req.getParameter("ep_code"));
		 * vo.setCustomer_code(req.getParameter("customer_code"));
		 * vo.setAccount_code(req.getParameter("account_code"));
		 * vo.setEp_amount(Integer.parseInt(req.getParameter("ep_amount")));
		 * vo.setEp_price(Integer.parseInt(req.getParameter("ep_price")));
		 * vo.setEp_deliver_date(Timestamp.valueOf(req.getParameter("Ep_deliver_date")))
		 * ; vo.setEp_reg_date(new Timestamp(System.currentTimeMillis()));
		 * vo.setUsername(req.getParameter("username"));
		 * vo.setE_approval_code(req.getParameter("e_approval_code"));
		 * vo.setEas_code(req.getParameter("eas_code"));
		 * vo.setPosition_code(req.getParameter("position_code"));
		 */

		int pageSize = 10; // 한 페이지당 출력할 글 갯수
		int cnt = 0; // 글의 갯수
		int start = 0; // 현재 페이지의 시작 글 번호
		int end = 0; // 현재 페이지의 마지막 글 번호
		int number = 0; // 출력용 글 번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		cnt = dao.getestimateCnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");
		System.out.println(req.getParameter("pageNum"));

		if (pageNum == null) {
			pageNum = "1";
		}

		currentPage = Integer.parseInt(pageNum);
		System.out.println("currentPage " + currentPage);

		// 현재페이지 시작 글번호
		// 1 = ( 1 - 1 ) * 5 + 1(페이지별)
		start = (currentPage - 1) * pageSize + 1;

		// 현재페이지의 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		number = cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);

		if (end > cnt)
			end = cnt;

		if (cnt > 0) {
			// 5-2단계. 게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<Estimate> etos = dao.getestimate(map);
			model.addAttribute("etos", etos);
		}

		System.out.println("==========================================");
		model.addAttribute("cnt", cnt); // 글 갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("curruentPage", currentPage); // 현재페이지
		}

	}

	// ST_estimate_price -> ST_estimate_Form 상세 페이지
	@Override
	public void estimateForm(HttpServletRequest req, Model model) {
		String ep_code = req.getParameter("ep_code");

		Estimate vo = dao.getEstimateArticle(ep_code);

		model.addAttribute("eto", vo);
		model.addAttribute("ep_code", ep_code);
	}

	// ST_estimate 수정 처리 페이지
	@Override
	public void estimatemodifyPro(HttpServletRequest req, Model model) {
		String ep_code = req.getParameter("ep_code");

		Estimate vo = new Estimate();
		vo.setEp_code(ep_code);
		vo.setEp_amount(Integer.parseInt(req.getParameter("ep_amount")));
		vo.setEp_deliver_date(Date.valueOf(req.getParameter("ep_deliver_date")));

		int updateEstimate = dao.updateEstimate(vo);
		req.setAttribute("ep_code", ep_code);
		req.setAttribute("updateEstimate", updateEstimate);

	}

	// ST_estimate 삭제 처리 페이지
	@Override
	public void estimatedeletePro(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		String ep_code = req.getParameter("ep_code");

		int deleteEstimate = dao.deleteEstimate(ep_code);

		model.addAttribute("deleteEstimate", deleteEstimate);
		model.addAttribute("ep_code", ep_code);
	}

	// ST_sale_plan 목록
	@Override
	public void salePlan(HttpServletRequest req, Model model) {
		/*
		 * // 바구니 생성 SalePlan vo = new SalePlan();
		 * 
		 * vo.setPosition_code(req.getParameter("position_code")); // 현재 결제자
		 * vo.setSaleplan_code(req.getParameter("saleplen_code")); // 판매 계획 코드
		 * vo.setAccount_code(req.getParameter("account_code")); // 계정 코드
		 * vo.setS_plan_start(Date.valueOf(req.getParameter("s_plan_start"))); // 기간 시작
		 * vo.setS_plan_end(Date.valueOf(req.getParameter("s_plan_end"))); // 기간 종료
		 * vo.setEf_price(Integer.parseInt(req.getParameter("ef_price"))); // 예상 판매 가격
		 * vo.setSaleplan_name(req.getParameter("saleplan_name")); // 품명
		 * vo.setSaleplan_standard(req.getParameter("saleplan_standard")); // 규격
		 * vo.setSaleplan_unit(req.getParameter("saleplan_unit")); // 단위
		 * vo.setSaleplan_amount(Integer.parseInt(req.getParameter("saleplan_amount")));
		 * // 계획 수량 vo.setNote(req.getParameter("note")); // 비고
		 */

		int pageSize = 10; // 한 페이지당 출력할 글 갯수
		int cnt = 0; // 글의 갯수
		int start = 0; // 현재 페이지의 시작 글 번호
		int end = 0; // 현재 페이지의 마지막 글 번호
		int number = 0; // 출력용 글 번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		cnt = dao.getSaleCnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");
		System.out.println(req.getParameter("pageNum"));

		if (pageNum == null) {
			pageNum = "1";
		}

		currentPage = Integer.parseInt(pageNum);
		System.out.println("currentPage " + currentPage);

		// 현재페이지 시작 글번호
		// 1 = ( 1 - 1 ) * 5 + 1(페이지별)
		start = (currentPage - 1) * pageSize + 1;

		// 현재페이지의 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		number = cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);

		if (end > cnt)
			end = cnt;

		if (cnt > 0) {
			// 5-2단계. 게시글 목록 조회
			// List<BoardVO> dtos = dao.getArticleList(start, end);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<SalePlan> dtos = dao.getsaleplan(map);
			model.addAttribute("dtos", dtos);
		}

		System.out.println("==========================================");
		model.addAttribute("cnt", cnt); // 글 갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("curruentPage", currentPage); // 현재페이지
		}

	}

	// ST_sale_plan 상세 페이지 (수정 목록)
	@Override
	public void salePlanWriteForm(HttpServletRequest req, Model model) {
		String saleplan_code = req.getParameter("saleplan_code");

		SalePlan vo = dao.getSaleplanArticle(saleplan_code);

		model.addAttribute("dto", vo);
		model.addAttribute("saleplan_code", saleplan_code);

	}

	// ST_sale_plan 수정 처리 페이지
	@Override
	public void salePlanmodifyPro(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		String saleplan_code = req.getParameter("saleplan_code");

		SalePlan vo = new SalePlan();
		vo.setSaleplan_code(saleplan_code);
		vo.setEf_price(Integer.parseInt(req.getParameter("ef_price")));
		vo.setS_plan_start(Date.valueOf(req.getParameter("s_plan_start")));
		vo.setS_plan_end(Date.valueOf(req.getParameter("s_plan_end")));

		System.out.println("code" + saleplan_code);
		System.out.println("가격 : " + req.getParameter("ef_price"));

		int saleplanCnt = dao.updatesalePlan(vo);
		req.setAttribute("saleplan_code", saleplan_code);
		req.setAttribute("saleplanCnt", saleplanCnt);

	}

	// ST_sale_plan 삭제 처리 페이지
	@Override
	public void salePlandeletePro(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		String saleplan_code = req.getParameter("saleplan_code");

		System.out.println("code : " + saleplan_code);

		int deletesale = dao.deletesalePlan(saleplan_code);

		model.addAttribute("deletesale", deletesale);
		model.addAttribute("saleplan_code", saleplan_code);

	}
	
	// ST_release 목록
	@Override
	public void release(HttpServletRequest req, Model model) {
		
		int pageSize = 10; // 한 페이지당 출력할 글 갯수
		int cnt = 0; // 글의 갯수
		int start = 0; // 현재 페이지의 시작 글 번호
		int end = 0; // 현재 페이지의 마지막 글 번호
		int number = 0; // 출력용 글 번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		cnt = dao.getReleaseCnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");
		System.out.println(req.getParameter("pageNum"));

		if (pageNum == null) {
			pageNum = "1";
		}

		currentPage = Integer.parseInt(pageNum);
		System.out.println("currentPage " + currentPage);

		// 현재페이지 시작 글번호
		// 1 = ( 1 - 1 ) * 5 + 1(페이지별)
		start = (currentPage - 1) * pageSize + 1;

		// 현재페이지의 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		number = cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);

		if (end > cnt)
			end = cnt;

		if (cnt > 0) {
			// 5-2단계. 게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<Release> rtos = dao.getReleaseList(map);
			model.addAttribute("rtos", rtos);
		}

		System.out.println("==========================================");
		model.addAttribute("cnt", cnt); // 글 갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("curruentPage", currentPage); // 현재페이지
		}
	}

	// tables-datatable (거래 명세서) 목록
	@Override
	public void transaction(HttpServletRequest req, Model model) {

	}

	@Override
	public void totalSales(HttpServletRequest req, Model model) {

	}

}
