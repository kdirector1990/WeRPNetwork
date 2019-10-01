package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import com.pj.erp.vo.BlockChainVO;
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

public interface HR_DAO {

	public int insertMember(HR_VO vo);
	
	public int insertMember2(HR_VO vo);
	
	public int insertPhysical(String username);
	
	public int insertAuth(String authority);
	
	public int insertFamily(HR_FamilyVO vo2);
	
	//호봉테이블 직급 가져오기
	public List<HR_RankVO> rank();
	
	//호봉테이블 호봉금액 가져오기
	public List<HR_PaystepVO> pay(String rank);
	
	//호봉테이블 금액수정하기
	public int updatePay(HR_PaystepVO vo);
	
	// 사원정보 가져오기
	public List<HR_VO> foundation();
	
	// 신체정보 가져오기
	public List<HR_PhysicalVO> physicalyList();
	
	public HR_PhysicalVO physicaly(String username);
	
	// 사원정보 수정페이지
	public HR_VO getFoundation(String username);
	
	// 사원정보 수정처리
	public int updateFoundation(HR_VO vo);
	
	// 신체정보 수정페이지
	public HR_PhysicalVO getPhysicaly(String username);
	
	// 신체정보 수정처리
	public int updatePhysicaly(HR_PhysicalVO vo);
	
	// 가족정보 수정페이지
	public HR_FamilyVO getFamily(String username);
	
	// 부서 등록
	public int insertDepartment(Map<String, Object> map);

	//인사고과/상벌현황 검색결과
	public List<HR_GreetingVO> getGreeting(Map<String, Object> map);
	
	//책정임금현황 검색결과
	public List<HR_SalaryVO> getSalary(Map<String, Object> map);
	
	//발령공고 검색결과
	public List<HR_RecordVO> getRecord(Map<String, Object> map);
	
	// 부서 목록
	public List<HR_VO> getDepartmentList(Map<String, Object> map);
	
	// 직책 목록
	public List<HR_VO> getPositionList(Map<String, Object> map);
	
	// 직책 목록
	public List<HR_VO> getRankList(Map<String, Object> map);	
	
	// 사원번호 체크
	// public int userChk(String username);
	
	// 사원번호 생성 시퀀스
	public String getUsername();
	
	// 사원정보 검색 폼
	public List<HR_VO> getUsers(Map<String, Object> map);
	
	// 사원정보 검색 폼
	public List<HR_PhysicalVO> getPhysicaly(Map<String, Object> map);
	
	// 가족정보 검색 폼
	public List<HR_FamilyVO> searchFamily(Map<String, Object> map);
	
	//근태(사원정보 검색)
	public List<HR_Time_VO> selectUserTime(Map<String, Object> map);
	
	//근태(출근 날짜 있는지)
	public int selectWork(Map<String, Object> map);
	
	//근태(출근입력)
	public int StartWork(String username);
	
	//근태(퇴근 날짜 있는지
	public int selectEndWork(Map<String, Object> map);
	
	//근태(퇴근입력)
	public int EndWork(String username);
	
	//근속년수 검색결과
	public List<HR_YearService_VO> getYearofservice(Map<String, Object> map);

	// 인사발령등록 처리
	public int recordInput(HR_RecordVO vo);

	//근태(근무일별 있는가)
	public int DetailWork(HR_Time_VO vo);
	
	public HR_Time_VO DetailWork2 (HR_Time_VO vo);
	
	//근태(근무일별 목록 가져오기)
	public List<HR_Time_VO> SelectDetailWork(HR_Time_VO vo);
	
	public List<HR_Time_VO> SelectDetailWork2(Map<String,Object> map);

	// 직책변경코드 가져오기
	public String getPositionRecord();
	
	// 공고코드 시퀀스 가져오기
	public String getAP_code();
	
	// 발령공고 등록
	public int insertAp(HR_ApVO ap);
	
	// nfc 기록 조회(임시)
	public List<HR_nfc_log> getNfcLog();
	
	// 사원 직책 검색 
	public List<HR_RecordVO> getPositions(Map<String, Object> map);
	
	// 부서조회
	public List<HR_VO> getDepartmentCodeName(Map<String, Object> map);
	
	// 공고
	public HR_ApVO getApInfo(String ap_code);
	
	//지각 입력
	public int lateWorkStart(String username);
	
	//조퇴 입력
	public int ealryWorkEnd(String username);
	
	//지각/조퇴 갯수 가져오기
	public int LateEearlyer(HR_Time_VO vo);
	
	//지각, 조퇴 (시간, 월, 갯수, 들고오기)
	public List<HR_Time_VO> selectLateEearlyEnd(HR_Time_VO vo);
	
	//NFC 지우기
	public int deleteNfc(String tag_code);
	
	// 사원이름 검색 확인
	public int selectEname(String e_name);
		
	//검색 목록 가져오기
	public List<HR_VO> getUsernameList(String e_name);
	
	// 공고명 검색 확인
	public int selectAp_name(String ap_name);
	
	// 공고코드 목록 가져오기
	public List<HR_ApVO> getAp_codeList(String ap_name);
	
	// 가족정보 수정
	public int updateFamily(HR_FamilyVO vo); 
	
	// 발령공고 변경내역
	public List<HR_RecordVO> getRecords(Map<String, Object> map);
	
}
