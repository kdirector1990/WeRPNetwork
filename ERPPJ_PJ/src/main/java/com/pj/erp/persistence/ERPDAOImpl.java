package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.erp.vo.BlockChainVO;
import com.pj.erp.vo.MaterialVO;
import com.pj.erp.vo.ProductVO;
import com.pj.erp.vo.SalelistVO;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.Material_VO;
import com.pj.erp.vo.MsgVO;
import com.pj.erp.vo.HR.HR_nfc_log;
import com.pj.erp.vo.ST.ST_contrast;
import com.pj.erp.vo.ST.SaleList;

@Repository
public class ERPDAOImpl implements ERPDAO{
	
	@Autowired
	private SqlSession sqlSession;

	
	
	@Override
	public Map<String, Object> loginCheck(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.loginCheck",username);
	}

	@Override
	public Map<String, Object> authCheck(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.authCheck",username);
	}
	
	@Override
	public int nfc(String nfcid) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.nfc",nfcid); 
	}

	//NFC를 통해  username 가져오기
	@Override
	public HR_nfc_log selectNfc(String nfc_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.selectNfc", nfc_code);
		
	}
	
	@Override
	public BlockChainVO getGroupCode(String department_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.getGroupCode", department_code);
	}

	// 구매할 때 필요한 목록
	@Override
	public List<MaterialVO> getMaterialList() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getMaterialList");
	}
	
	@Override
	public int insertLog(HashVO vo) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.insertLog", vo);
	}

	@Override
	public List<HashVO> selectHashDept(String department_code) {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.selectHashDept", department_code);
	}

	//물품판매목록
	@Override
	public List<ProductVO> getProductList() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getProductList");
	}

	//물품 상세페이지
	@Override
	public ProductVO gerProductDetail(String product_code) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.gerProductDetail", product_code);
	}
	
	@Override
	public int InsertMaterial_IO(Material_VO vo) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.InsertMaterial_IO", vo);
	}
	
	@Override
	public List<Material_VO> selectMateral() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.selectMateral");
	}

	@Override
	public int insertSalelist(SaleList vo) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.insertSalelist", vo);
	}
	
	// ST_contrast 검색 조회
	@Override
	public List<SalelistVO> getContrast() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getContrast");
	}
	@Override
	public List<SalelistVO> getContrast2() {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.getContrast2");
	}
	
	// 사내메신저 사원 목록 가져오기
	@Override
	public List<MsgVO> selectUserMsg(Map<String, Object> map) {
		return sqlSession.selectList("com.pj.erp.persistence.ERPDAO.selectUserMsg", map);
	}
	
	// 사내메신저 입력 폼
	@Override
	public MsgVO WriteForm(String username) {
		return sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.WriteForm", username);
	}
	
	// 사내메신저 입력완료
	@Override
	public int WritePro(MsgVO vo) {
		return sqlSession.insert("com.pj.erp.persistence.ERPDAO.WritePro", vo);
	}

}
