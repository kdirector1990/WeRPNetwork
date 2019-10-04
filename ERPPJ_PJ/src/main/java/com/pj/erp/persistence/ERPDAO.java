package com.pj.erp.persistence;

import java.util.List;
import java.util.Map;

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


public interface ERPDAO {
	
	public Map<String, Object> loginCheck(String username);
	
	public Map<String, Object> authCheck(String username);
 
	public int nfc(String nfcid);
	
	public HR_nfc_log selectNfc(String nfc_code); 

	// 블록체인 쓰기 위한  department_group_code 가져오기
	public BlockChainVO getGroupCode(String department_code);
	
	// 물품 구매할 때 필요한 목록
	public List<MaterialVO> getMaterialList();
	
	// 블록체인 hash블록 DB에 담음.
	public int insertLog(HashVO vo);
	
	// 블록체인 암호화폐 편성내역 가져오기
	public List<HashVO> selectHashDept(String department_code);
	
	//물품판매목록
	public List<ProductVO> getProductList();
	
	//물품 상세페이지
	public ProductVO gerProductDetail(String product_code);

	// 블록체인을 통해 구매한 자제를 DB에 Insert
	public int InsertMaterial_IO(Material_VO vo);
	
	// 블록체인을 통해 구매한 자제목록 가져오기
	public List<Material_VO> selectMateral();
	
	// ST_contrast 검색 조회
	public List<SalelistVO> getContrast();
	public List<SalelistVO> getContrast2();
	
	// 블록체인을 통해 판매한 제품 판매대장에 insert
	public int insertSalelist(SaleList vo);
	
	// 사내메신저 사원 목록 가져오기
	public List<MsgVO> selectUserMsg(Map<String, Object> map);
	
	// 사내메신저 입력폼 정보 가져오기
	public MsgVO WriteForm(String username);
	
	// 메신저 입력
	public int WritePro(MsgVO vo);
	
}
