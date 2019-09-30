package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.protocol.http.HttpService;
import org.web3j.tx.Transfer;
import org.web3j.utils.Convert;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.vo.BlockChainVO;

@Service
public class MateralService {
	
	@Autowired
	ERPDAO dao;
	
	// 가나슈와 연결 한다 : localhost:8545
	private static final Web3j web3j = Web3j.build(new HttpService("HTTP://127.0.0.1:8545"));
	// 호스트에 가나슈 첫번째 계정의  PRIVATE KEY 복사하여 연결(재무팀)
	private static final Credentials hostCredentials = Credentials.create("666a82fc33f8134577a7beb1bdeaa689bb72740178727691d63032432b83e0fb");
	
	//거래처 지갑을 변수로서 생성한다.
	private static final Credentials account = Credentials.create("3f0b5c58378de554534a5a8c630aac075886e74a6b3229000ae78f4500e153e3");
	private static final Credentials account2 = Credentials.create("53458B07979175D41C83DF78CA6A4B052C178E2D3EDA432C5A7D130E5716DE9F");
	
	// 가나슈의 gasLimit과 gasPrice를 적어준다.
	private static final BigInteger gasLimit = BigInteger.valueOf(6721975L);
	private static final BigInteger gasPrice =  BigInteger.valueOf(20000000000L);
	
	//계약자의 이름
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
    				walletCode = "3f0b5c58378de554534a5a8c630aac075886e74a6b3229000ae78f4500e153e3";
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
    
    //예산편성 시 작성할 계약서
    //배포함으로서 가나슈에서 Transaction -> CONTRACT CREATION ->  CONTRACT ADDRESS 가 발생하고 정보를 와서 변수에 담고 DB저장하여 사용할수 있다.(사용안함)
    @SuppressWarnings("deprecation")
    public void deploy() throws Exception {    	
    	contractAddress = Materal.deploy(web3j, hostCredentials, gasPrice, gasLimit).send().getContractAddress();
    	//  System.out.println(contractAddress);    	    	
    }
		
    // 이더를 전송하는 메소드
    @SuppressWarnings("deprecation")
	public void payCreateClub(HttpServletRequest req) throws Exception {
    	String department_code = req.getParameter("dept_code");
    	
    	String wallet = depart_wallet(department_code);
    	
    	// 2번째 계정의 primary key를 접속한 동호회 개설자에게 부여한다.
    	Credentials dept = Credentials.create(wallet);
    	System.out.println("지갑 : " + wallet);
    	
    	byte[] name = stringToBytes32(department_code); 
    	
    	int price = Integer.parseInt(req.getParameter("money"));
    	BigInteger ethers = null;
    	
    	//가격에 해당하는 이더 설정.
    	if(price < 100000) {
    		ethers = etherToWei(new BigDecimal(1));
    	}
    	else if((100000 < price) && (price < 300000)) {
    		ethers = etherToWei(new BigDecimal(2));
    	}
    	else if ((300000 < price) && (price < 500000)) {
    		ethers = etherToWei(new BigDecimal(3));
    	}
    	else if ((500000 < price) && (price < 800000)) {
    		ethers = etherToWei(new BigDecimal(4));
    	}
    	else if ((800000 < price) && (price < 1000000)) {
    		ethers = etherToWei(new BigDecimal(5));
    	}
    	else {
    		ethers = etherToWei(new BigDecimal(6));
    	}
    	
    	// 자바로 변환된 CreateClub의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소 
    	Materal club = Materal.load(contractAddress, web3j, account, gasPrice, gasLimit);
    	// 솔리디티의 newCreateClub을 호출 : 두번째 계정인 new_credentials이 host에게 1이더를 전송하기위함
    	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
    	// 두번째 매개변수는 현재 접속한 세션의 아이디    	
		club.buyMaterial(new BigInteger("0"), name, ethers).send();
		
    }
	
}
