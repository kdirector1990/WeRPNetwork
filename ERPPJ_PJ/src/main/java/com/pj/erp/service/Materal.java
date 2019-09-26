package com.pj.erp.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.web3j.abi.EventEncoder;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Event;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Bytes32;
import org.web3j.abi.datatypes.generated.StaticArray10;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameter;
import org.web3j.protocol.core.RemoteCall;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.Log;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tuples.generated.Tuple2;
import org.web3j.tx.Contract;
import org.web3j.tx.TransactionManager;
import org.web3j.tx.gas.ContractGasProvider;
import rx.Observable;
import rx.functions.Func1;

/**
 * <p>Auto generated code.
 * <p><strong>Do not modify!</strong>
 * <p>Please use the <a href="https://docs.web3j.io/command_line.html">web3j command line tools</a>,
 * or the org.web3j.codegen.SolidityFunctionWrapperGenerator in the 
 * <a href="https://github.com/web3j/web3j/tree/master/codegen">codegen module</a> to update.
 *
 * <p>Generated with web3j version 3.6.0.
 */
public class Materal extends Contract {
    private static final String BINARY = "608060405234801561001057600080fd5b50600180546001600160a01b031916331790556103c4806100326000396000f3fe6080604052600436106100555760003560e01c806308b42f141461005a5780634dacfacd1461007f5780635aee8703146100cd5780638da5cb5b1461011a578063e377e9661461014b578063f2aa821814610175575b600080fd5b61007d6004803603604081101561007057600080fd5b508035906020013561019f565b005b34801561008b57600080fd5b5061009461027e565b604051808261014080838360005b838110156100ba5781810151838201526020016100a2565b5050505090500191505060405180910390f35b3480156100d957600080fd5b506100f7600480360360208110156100f057600080fd5b50356102c4565b604080516001600160a01b03909316835260208301919091528051918290030190f35b34801561012657600080fd5b5061012f610308565b604080516001600160a01b039092168252519081900360200190f35b34801561015757600080fd5b506100f76004803603602081101561016e57600080fd5b5035610317565b34801561018157600080fd5b5061012f6004803603602081101561019857600080fd5b503561033c565b60098211156101ad57600080fd5b33600283600a81106101bb57fe5b0180546001600160a01b039283166001600160a01b031991821617909155604080518082018252338152602080820186815260008881529182905283822092518354908716951694909417825592516001918201555490519216913480156108fc0292909190818181858888f1935050505015801561023e573d6000803e3d6000fd5b50604080513381526020810184905281517f4905a41ff80827b860d3dd1c55fa234a9cab9f7c147dccfc28edd19904e22ed0929181900390910190a15050565b610286610359565b6040805161014081019182905290600290600a9082845b81546001600160a01b0316815260019091019060200180831161029d575050505050905090565b6000806102cf610378565b50505060009081526020818152604091829020825180840190935280546001600160a01b03168084526001909101549290910182905291565b6001546001600160a01b031681565b600060208190529081526040902080546001909101546001600160a01b039091169082565b600281600a811061034957fe5b01546001600160a01b0316905081565b604051806101400160405280600a906020820280388339509192915050565b60408051808201909152600080825260208201529056fea265627a7a723158201332eb52b74bc7827f2219572873329551a574278013640b75dabc8a28ab2e7264736f6c634300050b0032";

    public static final String FUNC_BUYMATERIAL = "buyMaterial";

    public static final String FUNC_GETALLBUYER = "getAllbuyer";

    public static final String FUNC_GETBUYERINFO = "getBuyerInfo";

    public static final String FUNC_OWNER = "owner";

    public static final String FUNC_BUYERINFO = "buyerInfo";

    public static final String FUNC_BUYERS = "buyers";

    public static final Event LOGBUYER_EVENT = new Event("LogBuyer", 
            Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}, new TypeReference<Uint256>() {}));
    ;

    //@Deprecated
    protected Materal(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

	
	 protected Materal(String contractAddress, Web3j web3j, Credentials
	 credentials, ContractGasProvider contractGasProvider) { super(BINARY,
	 contractAddress, web3j, credentials, contractGasProvider); }
	 

    //@Deprecated
    protected Materal(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

	
	 protected Materal(String contractAddress, Web3j web3j, TransactionManager
	  transactionManager, ContractGasProvider contractGasProvider) { super(BINARY,
	  contractAddress, web3j, transactionManager, contractGasProvider); }
	 

    public RemoteCall<TransactionReceipt> buyMaterial(BigInteger _id, byte[] _name, BigInteger weiValue) {
        final Function function = new Function(
                FUNC_BUYMATERIAL, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(_id), 
                new org.web3j.abi.datatypes.generated.Bytes32(_name)), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function, weiValue);
    }

    public RemoteCall<List> getAllbuyer() {
        final Function function = new Function(FUNC_GETALLBUYER, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<StaticArray10<Address>>() {}));
        return new RemoteCall<List>(
                new Callable<List>() {
                    @Override
                    @SuppressWarnings("unchecked")
                    public List call() throws Exception {
                        List<Type> result = (List<Type>) executeCallSingleValueReturn(function, List.class);
                        return convertToNative(result);
                    }
                });
    }

    public RemoteCall<Tuple2<String, byte[]>> getBuyerInfo(BigInteger _id) {
        final Function function = new Function(FUNC_GETBUYERINFO, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(_id)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}, new TypeReference<Bytes32>() {}));
        return new RemoteCall<Tuple2<String, byte[]>>(
                new Callable<Tuple2<String, byte[]>>() {
                    @Override
                    public Tuple2<String, byte[]> call() throws Exception {
                        List<Type> results = executeCallMultipleValueReturn(function);
                        return new Tuple2<String, byte[]>(
                                (String) results.get(0).getValue(), 
                                (byte[]) results.get(1).getValue());
                    }
                });
    }

    public RemoteCall<String> owner() {
        final Function function = new Function(FUNC_OWNER, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<Tuple2<String, byte[]>> buyerInfo(BigInteger param0) {
        final Function function = new Function(FUNC_BUYERINFO, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}, new TypeReference<Bytes32>() {}));
        return new RemoteCall<Tuple2<String, byte[]>>(
                new Callable<Tuple2<String, byte[]>>() {
                    @Override
                    public Tuple2<String, byte[]> call() throws Exception {
                        List<Type> results = executeCallMultipleValueReturn(function);
                        return new Tuple2<String, byte[]>(
                                (String) results.get(0).getValue(), 
                                (byte[]) results.get(1).getValue());
                    }
                });
    }

    public RemoteCall<String> buyers(BigInteger param0) {
        final Function function = new Function(FUNC_BUYERS, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public static RemoteCall<Materal> deploy(Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Materal.class, web3j, credentials, contractGasProvider, BINARY, "");
    }

    public static RemoteCall<Materal> deploy(Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Materal.class, web3j, transactionManager, contractGasProvider, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Materal> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Materal.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Materal> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Materal.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    public List<LogBuyerEventResponse> getLogBuyerEvents(TransactionReceipt transactionReceipt) {
        List<Contract.EventValuesWithLog> valueList = extractEventParametersWithLog(LOGBUYER_EVENT, transactionReceipt);
        ArrayList<LogBuyerEventResponse> responses = new ArrayList<LogBuyerEventResponse>(valueList.size());
        for (Contract.EventValuesWithLog eventValues : valueList) {
            LogBuyerEventResponse typedResponse = new LogBuyerEventResponse();
            typedResponse.log = eventValues.getLog();
            typedResponse._buyer = (String) eventValues.getNonIndexedValues().get(0).getValue();
            typedResponse._id = (BigInteger) eventValues.getNonIndexedValues().get(1).getValue();
            responses.add(typedResponse);
        }
        return responses;
    }

    public Observable<LogBuyerEventResponse> logBuyerEventObservable(EthFilter filter) {
        return web3j.ethLogObservable(filter).map(new Func1<Log, LogBuyerEventResponse>() {
            @Override
            public LogBuyerEventResponse call(Log log) {
                Contract.EventValuesWithLog eventValues = extractEventParametersWithLog(LOGBUYER_EVENT, log);
                LogBuyerEventResponse typedResponse = new LogBuyerEventResponse();
                typedResponse.log = log;
                typedResponse._buyer = (String) eventValues.getNonIndexedValues().get(0).getValue();
                typedResponse._id = (BigInteger) eventValues.getNonIndexedValues().get(1).getValue();
                return typedResponse;
            }
        });
    }

    public Observable<LogBuyerEventResponse> logBuyerEventObservable(DefaultBlockParameter startBlock, DefaultBlockParameter endBlock) {
        EthFilter filter = new EthFilter(startBlock, endBlock, getContractAddress());
        filter.addSingleTopic(EventEncoder.encode(LOGBUYER_EVENT));
        return logBuyerEventObservable(filter);
    }

    @Deprecated
    public static Materal load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new Materal(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static Materal load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new Materal(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

	
	 public static Materal load(String contractAddress, Web3j web3j, Credentials
	 credentials, ContractGasProvider contractGasProvider) { return new Materal(contractAddress, web3j, credentials, contractGasProvider); }
	 

	
	  public static Materal load(String contractAddress, Web3j web3j,
	 TransactionManager transactionManager, ContractGasProvider
	 contractGasProvider) { return new Materal(contractAddress, web3j,
	 transactionManager, contractGasProvider); }
	 

    public static class LogBuyerEventResponse {
        public Log log;

        public String _buyer;

        public BigInteger _id;
    }
}
