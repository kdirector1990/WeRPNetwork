package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import org.web3j.utils.Convert;

@Service
public class ProductSell {

	// 롭슨 Test 서버와 연결 한다 : localhost:8545
		private static final Web3j web3j = Web3j.build(new HttpService("HTTPS://ropsten.infura.io/v3/d11459c1c17049628f462a1492c7df36"));
		
		// 호스트에는 첫번째 계정(재무팀)의  PRIVATE KEY 복사하여 연결
		private static final Credentials hostCredentials = Credentials.create("666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB");

		private static final BigInteger gasLimit = BigInteger.valueOf(6721975L);
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
	    public void SellProduct(HttpServletRequest req, Model model) throws Exception {
	    		    	
	    	// 계정의 primary key를 접속한 부서별로 할당한다.
	    	// 구입시 보낸 ether를 받을 지갑 : ft_01
	    	Credentials dept_AccountNumber = Credentials.create("666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB");
	    	
	    	// 물품 판매시 구매하는 사람의 지갑
	    	Credentials buyer = Credentials.create("BFDE674AE42A9FA179E3E965E1DDB9EA479E63E62CB61F16C2ADC4B365314BC5");
	    	
	    	//계약서를 작성(물품구매자)
	    	contractAddress = Product.deploy(web3j, buyer, gasPrice, gasLimit).send().getContractAddress();
	    	
	    	//구매하는 가격을 입력 받아서 조건에 해당하는 이더를 거래하도록 설정한다.
	    	int price = Integer.parseInt(req.getParameter("product_price"));
	    	
	    	BigInteger ethers = null;
	    	
	    	if(price < 1500000) {
	    		ethers = etherToWei(new BigDecimal(1));
	    	}
	    	else if(price < 2500000) {
	    		ethers = etherToWei(new BigDecimal(2));
	    	} 
	    	else {
	    		ethers = etherToWei(new BigDecimal(3));
	    	}
	    	
	    	//블록에 넣을 정보를 byte배열에 담는다.
	    	byte[] name = stringToBytes32("buyers");
	    	BigInteger count = new BigInteger("1");
	    	
	    	//작성한 계약서를 load
	    	Product pt = Product.load(contractAddress, web3j, dept_AccountNumber, gasPrice, gasLimit);
	    	
	    	// 솔리디티의 buyMaterialOrigins을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
	    	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
	    	String hash = pt.productBuy(count, name, new BigInteger("0"), ethers).send().getTransactionHash();
	    	
	    	
	    }
	    
}
