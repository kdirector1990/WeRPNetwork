package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import org.web3j.utils.Convert;

@Service
public class MateralServiceImpl {	
	// 가나슈와 연결 한다 : localhost:8545
	private static final Web3j web3j = Web3j.build(new HttpService("http://localhost:8545"));
	// 호스트에 가나슈 첫번째 계정의  PRIVATE KEY 복사하여 연결
	private static final Credentials hostCredentials = Credentials.create("666a82fc33f8134577a7beb1bdeaa689bb72740178727691d63032432b83e0fb");
	// 가나슈의 gasLimit과 gasPrice를 적어준다.
	private static final BigInteger gasLimit = new BigInteger("6721975");
	private static final BigInteger gasPrice = new BigInteger("20000000000");
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
		
    // 배포함으로서 가나슈에서 Transaction -> CONTRACT CREATION ->  CONTRACT ADDRESS 가 발생하고 정보를 와서 변수에 담고 DB저장하여 사용할수 있다.(사용안함)
    @SuppressWarnings("deprecation")
	public void deploy() throws Exception {    	
    	contractAddress = Materal.deploy(web3j, hostCredentials, gasPrice, gasLimit).send().getContractAddress();
    	//  System.out.println(contractAddress);    	    	
    }
    
    // 이더를 전송하는 메소드
    @SuppressWarnings("deprecation")
	public void payCreateClub(HttpServletRequest req) throws Exception {
    	// 구매하는 부서의 코드로 구매하게 만든다. 
    	String deptcode = (String) req.getSession().getAttribute("department_code");
    	// 2번째 계정의 primary key를 접속한 동호회 개설자에게 부여한다.
    	Credentials new_credentials = Credentials.create("e1bc6e0fc06696e454b1c42286b0b5b0ddcf4eba190976a24e9645924f70485a");

    	byte[] name = stringToBytes32(deptcode); 
    	BigInteger price = etherToWei(new BigDecimal(1)); // 개설비는 1이더로 고정하기위함
    	
    	// 자바로 변환된 CreateClub의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소 
    	Materal club = Materal.load(contractAddress, web3j, new_credentials, gasPrice, gasLimit);
    	// 솔리디티의 newCreateClub을 호출 : 두번째 계정인 new_credentials이 host에게 1이더를 전송하기위함
    	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
    	// 두번째 매개변수는 현재 접속한 세션의 아이디    	
		club.buyMaterial(new BigInteger("0"), name, price).send();
		
    }
	
}
