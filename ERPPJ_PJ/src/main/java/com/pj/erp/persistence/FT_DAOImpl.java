package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.FT.FT_Account;
import com.pj.erp.vo.FT.FT_Bill_payment_VO;
import com.pj.erp.vo.FT.FT_Building;
import com.pj.erp.vo.FT.FT_Card;
import com.pj.erp.vo.FT.FT_Chit;
import com.pj.erp.vo.FT.FT_DTB;
import com.pj.erp.vo.FT.FT_Deposit;
import com.pj.erp.vo.FT.FT_Ledger;
import com.pj.erp.vo.FT.FT_Loan;
import com.pj.erp.vo.FT.FT_Long_Borrow_List;
import com.pj.erp.vo.FT.FT_Note;
import com.pj.erp.vo.FT.FT_Savings;
import com.pj.erp.vo.FT.FT_Short_Borrow_List;
import com.pj.erp.vo.FT.FT_Subject;
import com.pj.erp.vo.FT.FT_accounts_balance;
import com.pj.erp.vo.FT.FT_facility_list_VO;
import com.pj.erp.vo.FT.FT_land_list_VO; 
import com.pj.erp.vo.HR.HR_VO; 

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

	// 적금삭제
	@Override
	public int FT_SavingsPrevDelete(Map<String, Object> map) {
		int previnsertCnt = FT_SavingsDelete(map);
		if(previnsertCnt != 0) {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_SavingsPrevDelete",map);
		} else {
			return 0;
		}
	}
	
	@Override
	public int FT_SavingsDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_SavingsDelete",map);
	}

	// 예금 가져오기
	@Override
	public List<FT_Deposit> FT_DepositAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DepositAllSelect");
	}

	// 예금 검색 한 것 개수 가져오기
	@Override
	public int FT_DepositCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_DepositCntSelect(srhval);
	}
	
	// 예금 검색한 것 가져오기
	@Override
	public List<FT_Deposit> FT_DepositSelect(String srhval) {
		if(FT_DepositCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DepositSelect", srhval);
		}
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
		int previnsertCnt = FT_DepositPrevInsert(map);
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
		int previnsertCnt = FT_DepositPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_DepositUpdate",map);
		} else {
			return 0;
		}
	}

	// 예금삭제
	@Override
	public int FT_DepositPrevDelete(Map<String, Object> map) {
		int previnsertCnt = FT_DepositDelete(map);
		if(previnsertCnt != 0) {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_DepositPrevDelete",map);
		} else {
			return 0;
		}
	}

	@Override
	public int FT_DepositDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_DepositDelete",map);
	}
	
	// 예금 가져오기
	@Override
	public List<FT_Loan> FT_LoanAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_LoanAllSelect");
	}
	
	// 예금 키 가져오기
	@Override
	public String FT_LoanKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_LoanKeySelect");
	}

	// 예금추가
	@Override
	public int FT_LoanPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_LoanPrevInsert",map);
	}

	@Override
	public int FT_LoanInsert(Map<String, Object> map) {
		int previnsertCnt = FT_LoanPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_LoanInsert",map);
		} else {
			return 0;
		}
	}

	// 예금수정
	@Override
	public int FT_LoanPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_LoanPrevUpdate",map);
	}

	@Override
	public int FT_LoanUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_LoanPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_LoanUpdate",map);
		} else {
			return 0;
		}
	}

	// 예금삭제
	@Override
	public int FT_LoanPrevDelete(Map<String, Object> map) {
		int previnsertCnt = FT_LoanDelete(map);
		if(previnsertCnt != 0) {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_LoanPrevDelete",map);
		} else {
			return 0;
		}
	}

	@Override
	public int FT_LoanDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_LoanDelete",map);
	}
	
	// 예금 가져오기
	@Override
	public List<FT_Note> FT_NoteAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_NoteAllSelect");
	}
	
	// 예금 키 가져오기
	@Override
	public String FT_NoteKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_NoteKeySelect");
	}

	// 예금추가
	@Override
	public int FT_NotePrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_NotePrevInsert",map);
	}

	@Override
	public int FT_NoteInsert(Map<String, Object> map) {
		int previnsertCnt = FT_NotePrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_NoteInsert",map);
		} else {
			return 0;
		}
	}

	// 예금수정
	@Override
	public int FT_NotePrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_NotePrevUpdate",map);
	}

	@Override
	public int FT_NoteUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_NotePrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_NoteUpdate",map);
		} else {
			return 0;
		}
	}

	// 예금삭제
	@Override
	public int FT_NotePrevDelete(Map<String, Object> map) {
		int previnsertCnt = FT_NoteDelete(map);
		if(previnsertCnt != 0) {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_NotePrevDelete",map);
		} else {
			return 0;
		}
	}

	@Override
	public int FT_NoteDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_NoteDelete",map);
	}
	
	// 카드 가져오기
	@Override
	public List<FT_Card> FT_CardManagementSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_CardManagementSelect");
	}
	
	// 카드 키 가져오기
	@Override
	public String FT_CardManagementKeySelect() {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_CardManagementKeySelect");
	}

	// 카드추가
	@Override
	public int FT_CardManagementPrevInsert(Map<String, Object> map) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_CardManagementPrevInsert",map);
	}

	@Override
	public int FT_CardManagementInsert(Map<String, Object> map) {
		int previnsertCnt = FT_CardManagementPrevInsert(map);
		if(previnsertCnt != 0) {
			return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_CardManagementInsert",map);
		} else {
			return 0;
		}
	}

	// 카드수정
	@Override
	public int FT_CardManagementPrevUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_CardManagementPrevUpdate",map);
	}

	@Override
	public int FT_CardManagementUpdate(Map<String, Object> map) {
		int previnsertCnt = FT_CardManagementPrevUpdate(map);
		if(previnsertCnt != 0) {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_CardManagementUpdate",map);
		} else {
			return 0;
		}
	}

	// 카드삭제
	@Override
	public int FT_CardManagementPrevDelete(Map<String, Object> map) {
		int previnsertCnt = FT_CardManagementDelete(map);
		if(previnsertCnt != 0) {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_CardManagementPrevDelete",map);
		} else {
			return 0;
		}
	}

	@Override
	public int FT_CardManagementDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_CardManagementDelete",map);
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
	
	// 계정과목 가져오기
	@Override
	public List<FT_Subject> FT_AccSubjectAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_AccSubjectAllSelect");
	}
	
	// 계정과목 검색 한 것 개수 가져오기
	@Override
	public int FT_AccSubjectCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_AccSubjectCntSelect(srhval);
	}
	
	// 계정과목 검색한 것 가져오기
	@Override
	public List<FT_Subject> FT_AccSubjectSelect(String srhval) {
		if(FT_AccSubjectCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_AccSubjectSelect", srhval);
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
	
	// 사업자번호 수정
	@Override
	public int FT_LicenseUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_LicenseUpdate",map);
	}
	
	// 거래처 수정
	@Override
	public int FT_AccountUpdate(Map<String, Object> map) {
		int cnt = FT_LicenseUpdate(map);
		if(cnt == 0) {
			return 0;
		} else {
			return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_AccountUpdate",map);
		}
	}
	
	// 사업자번호 삭제
	@Override
	public int FT_LicenseDelete(Map<String, Object> map) {
		int cnt = FT_AccountDelete(map);
		if(cnt == 0) {
			return 0;
		} else {
			return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_LicenseDelete",map);
		}
	}
	
	// 거래처 삭제
	@Override
	public int FT_AccountDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_AccountDelete",map);
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
	
	@Override
	public int FT_chitDistinctCnt(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_chitDistinctCnt", map);
	}
	
	// 승인처리 할 리스트
	@Override
	public List<FT_Chit> FT_ChitDistinct(Map<String, Object> map) {
		if(FT_chitDistinctCnt(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_ChitDistinct", map);
		}
	}
	
	@Override
	public int FT_journalListCnt(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_journalListCnt", map);
	}
	
	// 검색된 모든 분개를 가져온다.
	@Override
	public List<FT_Chit> FT_journalList(Map<String, Object> map) {
		if(FT_journalListCnt(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_journalList", map);
		}
	}

	// 거래처 원장 리스트를 가져온다.
	@Override
	public int FT_ledgerListCnt(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_ledgerListCnt", map);
	}
	
	@Override
	public List<FT_Ledger> FT_ledgerList(Map<String, Object> map) {
		if(FT_ledgerListCnt(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_ledgerList", map);
		}
	}
	
	// 거래처 원장 리스트를 가져온다.
	@Override
	public int FT_ledgerAccListCnt(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_ledgerAccListCnt", map);
	}
	
	@Override
	public List<FT_Chit> FT_ledgerAccList(Map<String, Object> map) {
		if(FT_ledgerAccListCnt(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_ledgerAccList", map);
		}
	}
	
	// 일별 리스트를 가져온다.
	@Override
	public int FT_DTBDayListCntL(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBDayListCntL", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBDayListL(Map<String, Object> map) {
		if(FT_DTBDayListCntL(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBDayListL", map);
		}
	}
	
	@Override
	public int FT_DTBDayListCntM(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBDayListCntM", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBDayListM(Map<String, Object> map) {
		if(FT_DTBDayListCntM(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBDayListM", map);
		}
	}
	
	@Override
	public int FT_DTBDayListCntS(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBDayListCntS", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBDayListS(Map<String, Object> map) {
		if(FT_DTBDayListCntS(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBDayListS", map);
		}
	}
	
	// 월별 리스트를 가져온다.
	@Override
	public int FT_DTBMonthListCntL(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListCntL", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBMonthListL(Map<String, Object> map) {
		if(FT_DTBMonthListCntL(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListL", map);
		}
	}
	
	@Override
	public int FT_DTBMonthListCntM(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListCntM", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBMonthListM(Map<String, Object> map) {
		if(FT_DTBMonthListCntM(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListM", map);
		}
	}
	
	@Override
	public int FT_DTBMonthListCntS(Map<String, Object> map) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListCntS", map);
	}
	
	@Override
	public List<FT_DTB> FT_DTBMonthListS(Map<String, Object> map) {
		if(FT_DTBMonthListCntS(map) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_DTBMonthListS", map);
		}
	}
	

	// 거래처 추가
	@Override
	public int FT_BuildingInsert(FT_Building vo) {
		return sqlSession.insert("com.pj.erp.persistence.FT_DAO.FT_BuildingInsert",vo);
	}
	
	// 거래처 수정
	@Override
	public int FT_BuildingUpdate(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_BuildingUpdate",map);
	}
	
	// 거래처 삭제
	@Override
	public int FT_BuildingDelete(Map<String, Object> map) {
		return sqlSession.delete("com.pj.erp.persistence.FT_DAO.FT_BuildingDelete",map);
	}
	
	// 거래처 검색 한 것 개수 가져오기
	public int FT_BuildingCntSelect(String srhval) {
		FT_DAO dao = sqlSession.getMapper(FT_DAO.class);
		return dao.FT_BuildingCntSelect(srhval);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public FT_Building FT_BuildingOneSelect(String srhval) {
		return sqlSession.selectOne("com.pj.erp.persistence.FT_DAO.FT_BuildingOneSelect", srhval);
	}
	
	// 거래처 검색한 것 가져오기
	@Override
	public List<FT_Building> FT_BuildingSelect(String srhval) {
		if(FT_BuildingCntSelect(srhval) == 0) {
			return null;
		} else {
			return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_BuildingSelect", srhval);
		}
	}

	// 거래처 가져오기
	@Override
	public List<FT_Building> FT_BuildingAllSelect() {
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_BuildingAllSelect");
	}
	
	// 전표승인처리
	public int FT_CheckFormal(Map<String, Object> map) {
		return sqlSession.update("com.pj.erp.persistence.FT_DAO.FT_CheckFormal", map);
	}
	
	// 재무상태표_자산   - 권순용
	@Override
	public List<FT_accounts_balance> FT_getAssetsList(String typename) {
		
		return sqlSession.selectList("com.pj.erp.persistence.FT_DAO.FT_getAssetsList", typename);
	}
	
	
	
}
