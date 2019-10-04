package com.pj.erp.service;

import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.Ethereum;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.protocol.http.HttpService;
import org.web3j.tx.Transfer;
import org.web3j.utils.Convert;

import com.pj.erp.persistence.ERPDAO;
import com.pj.erp.vo.BlockChainVO;
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.Material_VO;
import com.pj.erp.vo.ProductVO;

@Service
public class MateralServiceImpl {
	
	@Autowired
	ERPDAO dao;
	
	// 롭슨 Test 서버와 연결 한다 : localhost:8545
	private static final Web3j web3j = Web3j.build(new HttpService("HTTPS://ropsten.infura.io/v3/d11459c1c17049628f462a1492c7df36"));
	
	// 호스트에는 첫번째 계정(재무팀)의  PRIVATE KEY 복사하여 연결
	private static final Credentials hostCredentials = Credentials.create("666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB");

	private static final BigInteger gasLimit = BigInteger.valueOf(800000L);
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
    
    /*
    //예산편성 시 작성할 계약서
    //배포함으로서 가나슈에서 Transaction -> CONTRACT CREATION ->  CONTRACT ADDRESS 가 발생하고 정보를 와서 변수에 담고 DB저장하여 사용할수 있다.(사용안함)
    @SuppressWarnings("deprecation")
    public void deploy() throws Exception {    	
    	contractAddress = Materal.deploy(web3j, hostCredentials, gasPrice, gasLimit).send().getContractAddress();
    	//  System.out.println(contractAddress);    	    	
    }
		*/
    
    
    @SuppressWarnings("deprecation")
	public void deploy() throws Exception {    	
    	contractAddress = Materal.deploy(web3j, Account, gasPrice, gasLimit).send().getContractAddress();
    	//  System.out.println(contractAddress);    	    	
    }
    
    //편성한 가상화폐 예산 보내기.
    @SuppressWarnings("deprecation")
	public void budgetAdd(HttpServletRequest req, Model model) throws Exception {
    	
    	String department_code = req.getParameter("dept_code");
    	
    	String deptWallet = depart_wallet(department_code);
    	
    	// 계정의 primary key를 검색한 부서의 팀으로 할당한다.
    	Credentials dept_AccountNumber = Credentials.create(deptWallet);
    	
    	String contractAddress2 = Materal.deploy(web3j, dept_AccountNumber, gasPrice, gasLimit).send().getContractAddress();
    	
    	//구매하는 가격을 입력받아서 조건에 해당하는 이더를 거래하도록 설정한다.
    	int price = Integer.parseInt(req.getParameter("money"));
    	BigInteger ethers = null;
    	
    	//가격에 해당하는 이더 설정.
    	if(price < 100000) {
    		ethers = etherToWei(new BigDecimal(1));
    	}
    	else if((100000 < price) && (price < 300000)) {
    		ethers = etherToWei(new BigDecimal(1.25));
    	}
    	else if ((300000 < price) && (price < 500000)) {
    		ethers = etherToWei(new BigDecimal(1.5));
    	}
    	else if ((500000 < price) && (price < 800000)) {
    		ethers = etherToWei(new BigDecimal(1.8));
    	}
    	else if ((800000 < price) && (price < 1000000)) {
    		ethers = etherToWei(new BigDecimal(2));
    	}
    	else {
    		ethers = etherToWei(new BigDecimal(2.25));
    	}

    	byte[] name = stringToBytes32(department_code);
    	
    	// 자바로 변환된 budgetAdd의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소
    	Materal dept = Materal.load(contractAddress2, web3j, hostCredentials, gasPrice, gasLimit);

    	// 솔리디티의 budgetAdd을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
    	// 첫번재 매개변수는 예산의 id인데 사용하지않아 상관없으므로 0으로 초기화
    	// 두번째 매개변수는 현재 접속한 부서코드 이름.
		String hash = dept.buyMaterial(new BigInteger("0"), name, ethers).send().getTransactionHash();
		
		//DB에 내역 가상화폐 거래 내역 insert
		String purpose = req.getParameter("purpose");
		
		HashVO vos = new HashVO();
		vos.setDepartment_code(department_code);
		vos.setE_subject(purpose);
		vos.setE_hashcode(hash);
		
		int insertCnt = dao.insertLog(vos);
		if(insertCnt == 1) {
			System.out.println("등록되었습니다.");
		}
    }  
    
    //편성한 가상화폐 예산 보내기.
    @SuppressWarnings("deprecation")
	public String BudgetAdd(String wallet, String prices) throws Exception {
    	
    	// 계정의 primary key를 검색한 부서의 팀으로 할당한다.
    	Credentials dept_AccountNumber = Credentials.create(wallet);
    	
    	String contractAddress2 = Department.deploy(web3j, dept_AccountNumber, gasPrice, gasLimit).send().getContractAddress();
    	
    	//구매하는 가격을 입력받아서 조건에 해당하는 이더를 거래하도록 설정한다.
    	int price = Integer.parseInt(prices);
    	BigInteger ethers = null;
    	
    	//가격에 해당하는 이더 설정.
    	if(price < 300000) {
    		ethers = etherToWei(new BigDecimal(1));
    	}
    	else {
    		ethers = etherToWei(new BigDecimal(2));
    	}

    	byte[] name = stringToBytes32(wallet);
    	
    	// 자바로 변환된 budgetAdd의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소

    	Department dept = Department.load(contractAddress2, web3j, hostCredentials, gasPrice, gasLimit);
    	
    	// 솔리디티의 budgetPartment을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
    	// 첫번재 매개변수는 예산의 id인데 사용하지않아 상관없으므로 0으로 초기화
    	// 두번째 매개변수는 현재 접속한 부서코드 이름.
    	String hash = dept.budgetPartment(new BigInteger("0"), name, new BigInteger(prices), ethers).send().getTransactionHash();
    	return hash;
    }
}
