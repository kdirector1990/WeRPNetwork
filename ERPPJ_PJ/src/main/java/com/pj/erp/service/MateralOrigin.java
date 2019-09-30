package com.pj.erp.service;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Bytes32;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tuples.generated.Tuple2;
import org.web3j.tx.Contract;
import org.web3j.tx.TransactionManager;
import org.web3j.tx.gas.ContractGasProvider;

/**
 * <p>Auto generated code.
 * <p><strong>Do not modify!</strong>
 * <p>Please use the <a href="https://docs.web3j.io/command_line.html">web3j command line tools</a>,
 * or the org.web3j.codegen.SolidityFunctionWrapperGenerator in the 
 * <a href="https://github.com/web3j/web3j/tree/master/codegen">codegen module</a> to update.
 *
 * <p>Generated with web3j version 3.6.0.
 */
public class MateralOrigin extends Contract {
    private static final String BINARY = "608060405234801561001057600080fd5b50600180546001600160a01b0319163317905561022d806100326000396000f3fe60806040526004361061003f5760003560e01c8063661c64f5146100445780639531d8171461008a5780639a04f704146100d7578063fdcaba29146100ec575b600080fd5b34801561005057600080fd5b5061006e6004803603602081101561006757600080fd5b5035610111565b604080516001600160a01b039092168252519081900360200190f35b34801561009657600080fd5b506100b4600480360360208110156100ad57600080fd5b503561012e565b604080516001600160a01b03909316835260208301919091528051918290030190f35b3480156100e357600080fd5b5061006e610153565b61010f6004803603604081101561010257600080fd5b5080359060200135610162565b005b600281600a811061011e57fe5b01546001600160a01b0316905081565b600060208190529081526040902080546001909101546001600160a01b039091169082565b6001546001600160a01b031681565b33600283600a811061017057fe5b0180546001600160a01b039283166001600160a01b031991821617909155604080518082018252338152602080820186815260008881529182905283822092518354908716951694909417825592516001918201555490519216913480156108fc0292909190818181858888f193505050501580156101f3573d6000803e3d6000fd5b50505056fea265627a7a72315820447f5eafcc40a3006ceda2a85f79b119d948fba88c9a323dba74c9554f79455664736f6c634300050b0032";

    public static final String FUNC_ORIGIN = "Origin";

    public static final String FUNC_ORIGINMATERIAL = "OriginMaterial";

    public static final String FUNC_GUEST = "guest";

    public static final String FUNC_BUYMATERIALORIGINS = "buyMaterialOrigins";

    @Deprecated
    protected MateralOrigin(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected MateralOrigin(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, credentials, contractGasProvider);
    }

    @Deprecated
    protected MateralOrigin(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    protected MateralOrigin(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public RemoteCall<String> Origin(BigInteger param0) {
        final Function function = new Function(FUNC_ORIGIN, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<Tuple2<String, byte[]>> OriginMaterial(BigInteger param0) {
        final Function function = new Function(FUNC_ORIGINMATERIAL, 
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

    public RemoteCall<String> guest() {
        final Function function = new Function(FUNC_GUEST, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<TransactionReceipt> buyMaterialOrigins(BigInteger _id, byte[] _name, BigInteger weiValue) {
        final Function function = new Function(
                FUNC_BUYMATERIALORIGINS, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(_id), 
                new org.web3j.abi.datatypes.generated.Bytes32(_name)), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function, weiValue);
    }

    public static RemoteCall<MateralOrigin> deploy(Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(MateralOrigin.class, web3j, credentials, contractGasProvider, BINARY, "");
    }

    public static RemoteCall<MateralOrigin> deploy(Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(MateralOrigin.class, web3j, transactionManager, contractGasProvider, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<MateralOrigin> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(MateralOrigin.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<MateralOrigin> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(MateralOrigin.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static MateralOrigin load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new MateralOrigin(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static MateralOrigin load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new MateralOrigin(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public static MateralOrigin load(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return new MateralOrigin(contractAddress, web3j, credentials, contractGasProvider);
    }

    public static MateralOrigin load(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return new MateralOrigin(contractAddress, web3j, transactionManager, contractGasProvider);
    }
}
