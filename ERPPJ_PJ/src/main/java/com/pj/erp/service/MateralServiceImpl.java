package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import org.web3j.utils.Convert;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.vo.BlockChainVO;

@Service
public class MateralServiceImpl {
	
	@Autowired
	ERPDAO dao;
	
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
	public void payMaterial(HttpServletRequest req) throws Exception {
    	// 구매하는 부서의 코드로 구매하게 만든다. 
    	String department_code = (String) req.getSession().getAttribute("dCode");
    	
    	// department_code를 통해 department_group_code를 가져온다.
    	// 팀 코드를 통해 부서코드를 가져온다.
    	BlockChainVO bc = dao.getGroupCode(department_code);
    	String deptcode = bc.getDepartment_group_code();
    	
    	// 계정의 primary key를 접속한 부서별로 할당한다.
    	Credentials dept_AccountNumber = null; 
    	
    	if(deptcode == "MS_dept") {
    		dept_AccountNumber = Credentials.create("3f0b5c58378de554534a5a8c630aac075886e74a6b3229000ae78f4500e153e3"); //경영지원
    	}
    	else if(deptcode == "CT_dept") {
    		dept_AccountNumber = Credentials.create("3b69cc479dbac9b02d2b7c39f7829a2e5df850203a1766355d854dd89fcc6848"); //전산
    	}
    	else if(deptcode == "FT_dept") {
    		dept_AccountNumber = Credentials.create("3f1e2bd4ef8941731d244359f0cdf1ef079e5eaffd57ea6d31addeb55e20d426"); //재무
    	}
    	else if(deptcode == "HR_dept") {
    		dept_AccountNumber = Credentials.create("83e094366642f531189d56df33ac870db53af8c7f7f60a7a8b20cb85bc43a59f"); //인사
    	}
    	else if(deptcode == "MF_dept") {
    		dept_AccountNumber = Credentials.create("c6fd20908cdc2326a8a5e366228c149fa7632e9c4ef035f5b7ebee1a04158b7e"); //제조
    	}
    	else if(deptcode == "ST_dept") {
    		dept_AccountNumber = Credentials.create("bfde674ae42a9fa179e3e965e1ddb9ea479e63e62cb61f16c2adc4b365314bc5"); //영업
    	}
    	
    	//구매하는 가격을 입력받아서 조건에 해당하는 이더를 거래하도록 설정한다.
    	int price= Integer.parseInt(req.getParameter("price"));
    	BigInteger ethers = null;
    	
    	//가격에 해당하는 이더 설정.
    	if(price < 100000) {
    		ethers = etherToWei(new BigDecimal(5));
    	}
    	else if((100000 < price) && (price < 300000)) {
    		ethers = etherToWei(new BigDecimal(7));
    	}
    	else if ((300000 < price) && (price < 500000)) {
    		ethers = etherToWei(new BigDecimal(15));
    	}
    	else if ((500000 < price) && (price < 800000)) {
    		ethers = etherToWei(new BigDecimal(25));
    	}
    	else if ((800000 < price) && (price < 1000000)) {
    		ethers = etherToWei(new BigDecimal(40));
    	}
    	else {
    		ethers = etherToWei(new BigDecimal(50));
    	}

    	byte[] name = stringToBytes32(deptcode); 
    	
    	// 자바로 변환된 CreateClub의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소 
    	Materal dept = Materal.load(contractAddress, web3j, dept_AccountNumber, gasPrice, gasLimit);
    	// 솔리디티의 buyMaterial을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
    	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
    	// 두번째 매개변수는 현재 접속한 부서코드
		dept.buyMaterial(new BigInteger("0"), name, ethers).send();
		
    }
	
}
