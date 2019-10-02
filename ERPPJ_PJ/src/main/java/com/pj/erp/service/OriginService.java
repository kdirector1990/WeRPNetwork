package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import org.web3j.utils.Convert;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.vo.Material_VO;

@Service
public class OriginService {
	
	@Autowired
	ERPDAO dao;
	
	// 롭슨 Test 서버와 연결 한다 : localhost:8545
	private static final Web3j web3j = Web3j.build(new HttpService("HTTPS://ropsten.infura.io/v3/d11459c1c17049628f462a1492c7df36"));
	
	// 호스트에는 첫번째 계정(재무팀)의  PRIVATE KEY 복사하여 연결
	private static final Credentials hostCredentials = Credentials.create("666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB");

	private static final BigInteger gasLimit = BigInteger.valueOf(4712388L);
	private static final BigInteger gasPrice =  BigInteger.valueOf(20000000000L);
	
	private static final Credentials Account = Credentials.create("3f0b5c58378de554534a5a8c630aac075886e74a6b3229000ae78f4500e153e3");
	String contractAddress = "";
    
	// etherToWei
	public static BigInteger etherToWei(BigDecimal ether) {
        return Convert.toWei(ether, Convert.Unit.ETHER).toBigInteger();
    }
	
	// StringToBytes32
    public static byte[] stringToBytes32(String string) {
        byte[] byteValue = string.getBytes();
        byte[] byteValueLen32 = new byte[32];
        System.arraycopy(byteValue, 0, byteValueLen32, 0, byteValue.length);
        return byteValueLen32;
    }
    
    // 부서 지갑 가져오기
    public String depart_wallet(String code) {
    	String walletCode = "";
    	switch(code) {
    		case "ct_01" : 
    				walletCode = "83E094366642F531189D56DF33AC870DB53AF8C7F7F60A7A8B20CB85BC43A59F";
    				break;
    		case "ft_01" :
    				walletCode = "666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB";
    				break;
    		case "ms_01" :
    				walletCode = "3F0B5C58378DE554534A5A8C630AAC075886E74A6B3229000AE78F4500E153E3";
    				break;
    		case "st_01" :
    				walletCode = "3B69CC479DBAC9B02D2B7C39F7829A2E5DF850203A1766355D854DD89FCC6848";
    				break;
    		case "hr_01" :
    				walletCode = "3F1E2BD4EF8941731D244359F0CDF1EF079E5EAFFD57EA6D31ADDEB55E20D426";
    				break;
    		case "mf_01" :
    				walletCode = "C6FD20908CDC2326A8A5E366228C149FA7632E9C4EF035F5B7EBEE1A04158B7E";
    				break;
    		
    	}
    	return walletCode;
    }
    
    @SuppressWarnings("deprecation")
   	public void deploy() throws Exception {    	
    	contractAddress = MateralOrigin.deploy(web3j, hostCredentials, gasPrice, gasLimit).send().getContractAddress();
       	//  System.out.println(contractAddress);    	    	
       }
    
    // 원자재 구매시 판매자에게 이더를 전송하는 메소드
    @SuppressWarnings("deprecation")
	public void payOriginMaterial(HttpServletRequest req, Model model) throws Exception {
    	
    	String deptname = " ft_01";
    		
    	//원자재 구매시 이더를 보낼 거래처의 지갑 정보를 위해 판매자 아이디를 가져온다.
    	String seller = req.getParameter("salesTeam");
    	Credentials salesTeam = null;
    	
    	if(seller == "1팀") {
    		salesTeam = Credentials.create("BFBBE8F7D376179A0FD9BE7DFF0697B1F2FC2CFCFB5FECD06291BFF0A28E52B5");
    	}
    	else if(seller == "2팀") {
    		salesTeam = Credentials.create("391b50b29fc771d1fcb9bbbcd5f949b756ca6cd7ac3a51adf43102c44b068aee ");
    	}
    	else if(seller == "3팀") {
    		salesTeam = Credentials.create("0x20BB5789f444e47a88c366f0bfE41EcB3c75BD4C");
    	}
    	else {
    		salesTeam = Credentials.create("BFDE674AE42A9FA179E3E965E1DDB9EA479E63E62CB61F16C2ADC4B365314BC5"); //st_01
    	}
    	
    	//구매하는 가격을 입력받아서 조건에 해당하는 이더를 거래하도록 설정한다.
    	//가격과 수량을 가져와서, 리플레이스를 함수를 통해 입력되어있는 콤마들 제거하여 숫자만 남긴다.
  
    	int prices = Integer.parseInt(req.getParameter("price")); 
    	int nums = Integer.parseInt(req.getParameter("num"));
    	
    	BigInteger ethers = null;
    	
    	int price = prices * nums;
    	if(price < 1500000) {
    		ethers = etherToWei(new BigDecimal(1));
    	}
    	else {
    		ethers= etherToWei(new BigDecimal(2));
    	}
    	
    	byte[] name = stringToBytes32(deptname); 
    	
    	// 계약서 작성 
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소
    	contractAddress = MateralOrigin.deploy(web3j, salesTeam, gasPrice, gasLimit).send().getContractAddress();
    	MateralOrigin dept = MateralOrigin.load(contractAddress, web3j, hostCredentials, gasPrice, gasLimit);

    	// 솔리디티의 buyMaterialOrigins을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
		String hash = dept.buyMaterialOrigins(new BigInteger("0"), name, ethers).send().getTransactionHash();
		
		String code = req.getParameter("material_code");

		// 자재를 구매했기에 DB에 입력.
		Material_VO mat = new Material_VO();
		mat.setMaterial_code(code);
		mat.setM_price(prices);
		mat.setM_amount(nums);
		mat.setM_note(hash);
		
		int updateCnt = dao.InsertMaterial_IO(mat);
		if(updateCnt == 1) {
			System.out.println("구매 후 DB에 등록하였습니다.");
		}
    }
    
    
}
