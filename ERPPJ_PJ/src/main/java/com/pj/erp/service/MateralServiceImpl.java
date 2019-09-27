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
import com.pj.erp.vo.HashVO;
import com.pj.erp.vo.Material_VO;
import com.pj.erp.vo.ProductVO;

@Service
public class MateralServiceImpl {
	
	@Autowired
	ERPDAO dao;
	
	// 롭슨 Test 서버와 연결 한다 : localhost:8545
	private static final Web3j web3j = Web3j.build(new HttpService("https://ropsten.infura.io/v3/d11459c1c17049628f462a1492c7df36"));
	
	// 호스트에는 첫번째 계정(재무팀)의  PRIVATE KEY 복사하여 연결
	private static final Credentials hostCredentials = Credentials.create("666A82FC33F8134577A7BEB1BDEAA689BB72740178727691D63032432B83E0FB");
	
	// 가나슈의 gasLimit과 gasPrice를 적어준다.
	private static final BigInteger gasLimit = BigInteger.valueOf(6721975L);
	private static final BigInteger gasPrice =  BigInteger.valueOf(20000000000L);
	
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
    
    //예산편성 시 작성할 계약서
    //배포함으로서 가나슈에서 Transaction -> CONTRACT CREATION ->  CONTRACT ADDRESS 가 발생하고 정보를 와서 변수에 담고 DB저장하여 사용할수 있다.(사용안함)
    @SuppressWarnings("deprecation")
    public void deploy() throws Exception {    	
    	contractAddress = Materal.deploy(web3j, hostCredentials, gasPrice, gasLimit).send().getContractAddress();
    	//  System.out.println(contractAddress);    	    	
    }
		
    //편성한 가상화폐 예산 보내기.
    @SuppressWarnings("deprecation")
	public void budgetAdd(HttpServletRequest req, Model model) throws Exception {
    	
    	String department_code = req.getParameter("dept_code");
    	int trans = 0;
    	
    	// department_code를 통해 department_group_code를 가져온다.
    	// 팀 코드를 통해 부서코드를 가져온다.
    	BlockChainVO bc = dao.getGroupCode(department_code);
    	String deptWallet = bc.getWallet_code();
    	String deptname = bc.getDepartment_name();
    	
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

    	byte[] name = stringToBytes32(deptname);
    	
    	// 자바로 변환된 budgetAdd의 메소드(load)를 호출하여 사용 : 이더 전송
    	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소 
    	Materal dept = Materal.load(contractAddress2, web3j, hostCredentials, gasPrice, gasLimit);

    	// 솔리디티의 budgetAdd을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
    	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
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
    
    // 원자재 구매시 판매자에게 이더를 전송하는 메소드
    @SuppressWarnings("deprecation")
	public void payMaterial(HttpServletRequest req, Model model) throws Exception {
    	
    	// 체크박스를 통한 정보를 통해 구매 
    	String[] code = req.getParameterValues("material_code");
    	String[] prices = req.getParameterValues("price");
    	String[] nums = req.getParameterValues("num");
    	
    	for(int i = 0; i < code.length; i++) {
    		for(int k = 0; k <prices.length; k++) {
    			for(int s = 0; s < nums.length; s++) {
    				int num[] = new int[nums.length];
    				int w = 0;
    				for(String q : nums) {
    					num[w] = Integer.parseInt(q);
    					for(int e = 0; e < num.length; e ++) {
    						
    						// 구매하는 부서의 코드로 구매하게 만든다. 
    			        	String department_code = "ft_01"; 
    			        	
    			        	// department_code를 통해 department_group_code를 가져온다.
    			        	// 팀 코드를 통해 부서코드를 가져온다.
    			        	BlockChainVO bc = dao.getGroupCode(department_code);
    			        	String deptWallet = bc.getWallet_code();
    			        	String deptname = bc.getDepartment_name();
    			        	
    			        	// 계정의 primary key를 접속한 부서별로 할당한다.
    			        	Credentials dept_AccountNumber = Credentials.create(deptWallet);
    			        	
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
    			        		salesTeam = Credentials.create("3F1E2BD4EF8941731D244359F0CDF1EF079E5EAFFD57EA6D31ADDEB55E20D426"); //st_01
    			        	}
    			        	
    			        	//계약서 작성.
    			        	contractAddress = Materal.deploy(web3j, salesTeam, gasPrice, gasLimit).send().getContractAddress();
    			        	
    			        	//구매하는 가격을 입력받아서 조건에 해당하는 이더를 거래하도록 설정한다.
    			        	//가격과 수량을 가져와서, 리플레이스를 함수를 통해 입력되어있는 콤마들 제거하여 숫자만 남긴다.
    						
    						int pricece = Integer.parseInt(prices[k].replace(",", ""));
    						int Num = num[e];
    						int price = pricece * Num;
    						
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

    			        	byte[] name = stringToBytes32(deptname); 
    			        	
    			        	// 자바로 변환된 CreateClub의 메소드(load)를 호출하여 사용 : 이더 전송
    			        	// 첫번째 매개변수인 contractAddress는 deploy메소드에서얻은 계약주소 
    			        	Materal dept = Materal.load(contractAddress, web3j, dept_AccountNumber, gasPrice, gasLimit);

    			        	// 솔리디티의 buyMaterial을 호출 : 부서에 해당하는 계정에서 금액에 맞추어서 호스트에 (임시적)으로 해당 이더를 전송하게 만들어둠. 
    			        	// 첫번재 매개변수는 매물id인데 사용하지않아 상관없으므로 0으로 초기화
    			        	// 두번째 매개변수는 현재 접속한 부서코드 이름.
    			    		String hash = dept.buyMaterial(new BigInteger("0"), name, ethers).send().getTransactionHash();
    						
    						// 자재를 구매했기에 DB에 입력.
    			    		Material_VO mat = new Material_VO();
    			    		mat.setMaterial_code(code[i]);
    			    		mat.setM_price(pricece);
    			    		mat.setM_amount(Num);
    			    		mat.setM_note(hash);
    			    		
    			    		int updateCnt = dao.InsertMaterial_IO(mat);
    			    		if(updateCnt == 1) {
    			    			System.out.println("구매 후 DB에 등록하였습니다.");
    			    		}
    					}
    				}
    			}
    		}
    		
    	}
    	
    }
	
}
