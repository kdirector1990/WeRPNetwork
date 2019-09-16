package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.HR_VO;
import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO;

@Repository
public class FT_DAOImpl implements FT_DAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public int FT_applyinput() {
		// TODO Auto-generated method stub
		return 0;
	}

	// 날짜 검색 분개 가져오기
	@Override
	public int FT_DateChitCnt(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_DateChitCnt(map);
	}

	// 거래번호 최고값
	@Override
	public int FT_ChitMaxNumber(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_ChitMaxNumber(map);
	}
	
	// 날짜 검색 분개 가져오기
	@Override
	public int FT_chitDataCnt(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_chitDataCnt(map);
	}
	
	// 분개 key 가져오기
	@Override
	public String FT_chitKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_chitKeySelect");
	}
	
	// 전표입력
	@Override
	public int FT_chitInsert(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_chitInsert(map);
	}
	
	// 전표수정
	@Override
	public int FT_chitupdate(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_chitupdate(map);
	}
	
	// 전표수정
	@Override
	public int FT_chitDelete(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_chitDelete(map);
	}

	// 분개 데이터 가져오기
	@Override
	public List<FT_Chit> FT_chitDataLoad(Map<String, Object> map) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_chitDataLoad(map);
	}
	
	// 적금 가져오기
	@Override
	public List<FT_Savings> FT_SavingsSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_SavingsSelect");
	}
	
	// 적금 key 가져오기
	@Override
	public String FT_SavingsKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_SavingsKeySelect");
	}
	
	// 적금추가
	@Override
	public int FT_SavingsPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_SavingsPrevInsert",map);
	}
	
	@Override
	public int FT_SavingsInsert(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_SavingsInsert",map);
		} else {
			return 0;
		}
	}

	// 적금수정
	@Override
	public int FT_SavingsPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_SavingsPrevUpdate",map);
	}
	
	@Override
	public int FT_SavingsUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_SavingsUpdate",map);
		} else {
			return 0;
		}
	}

	// 예금 가져오기
	@Override
	public List<FT_Savings> FT_DepositSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DepositSelect");
	}
	
	// 예금 키 가져오기
	@Override
	public String FT_DepositKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DepositKeySelect");
	}

	// 예금추가
	@Override
	public int FT_DepositPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_DepositPrevInsert",map);
	}

	@Override
	public int FT_DepositInsert(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_DepositInsert",map);
		} else {
			return 0;
		}
	}

	// 예금수정
	@Override
	public int FT_DepositPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_DepositPrevUpdate",map);
	}

	@Override
	public int FT_DepositUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_DepositUpdate",map);
		} else {
			return 0;
		}
	}
	
	// 계정과목 가져오기
	@Override
	public List<FT_Subject> FT_SubjectAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_SubjectAllSelect");
	}
	
	// 계정과목 검색 한 것 개수 가져오기
	@Override
	public int FT_SubjectCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_SubjectCntSelect(srhval);
	}
	
	// 계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_SubjectSelect(String srhval) {
		if(FT_SubjectCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_SubjectSelect", srhval);
		}
	}
	
	// 사업자번호 추가
	@Override
	public int FT_LicenseInsert(FT_Account vo) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_LicenseInsert",vo);
	}
	
	// 거래처 추가
	@Override
	public int FT_AccountInsert(FT_Account vo) {
		int cnt = FT_LicenseInsert(vo);
		if(cnt == 0) {
			return 0;
		} else {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_AccountInsert",vo);
		}
	}
	
	// 거래처 검색 한 것 개수 가져오기
	public int FT_AccountCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_AccountCntSelect(srhval);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public FT_Account FT_AccountOneSelect(String srhval) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_AccountOneSelect", srhval);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public List<FT_Account> FT_AccountSelect(String srhval) {
		if(FT_AccountCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_AccountSelect", srhval);
		}
	}

	// 거래처 가져오기
	@Override
	public List<FT_Account> FT_AccountAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_AccountAllSelect");
	}
	
	// 계정과목 가져오기
	@Override
	public List<HR_VO> FT_UsersAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_UsersAllSelect");
	}
	
	// 계정과목 검색 한 것 개수 가져오기
	@Override
	public int FT_UsersCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_UsersCntSelect(srhval);
	}
	
	// 계정과목 검색한 것 가져오기
	@Override
	public List<HR_VO> FT_UsersSelect(String srhval) {
		if(FT_UsersCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_UsersSelect", srhval);
		}
	}	
	
	//단기차입금 검색
	@Override
	public List<FT_Short_Borrow_List> getSBorrowList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.getSBorrowList", map);
	}
	
	//장기차입금 검색
	@Override
	public List<FT_Long_Borrow_List> getLBorrowList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.getLBorrowList", map);
	}

	@Override
	public List<FT_Bill_payment_VO> getBillPaymentList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.getBillPaymentList", map);
	}

	@Override
	public List<FT_land_list_VO> getLandList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.getLandList", map);
	}

	@Override
	public List<FT_facility_list_VO> getFacilityList(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.getFacilityList", map);
	}
}
