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
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tuples.generated.Tuple3;
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
public class Product extends Contract {
    private static final String BINARY = "608060405234801561001057600080fd5b50600180546001600160a01b03191633179055610254806100326000396000f3fe60806040526004361061003f5760003560e01c8063085d48831461004457806342f35885146100755780637ad71f72146100c7578063df80fa18146100f1575b600080fd5b34801561005057600080fd5b5061005961011c565b604080516001600160a01b039092168252519081900360200190f35b34801561008157600080fd5b5061009f6004803603602081101561009857600080fd5b503561012b565b604080516001600160a01b039094168452602084019290925282820152519081900360600190f35b3480156100d357600080fd5b50610059600480360360208110156100ea57600080fd5b5035610156565b61011a6004803603606081101561010757600080fd5b5080359060208101359060400135610173565b005b6001546001600160a01b031681565b6000602081905290815260409020805460018201546002909201546001600160a01b03909116919083565b600281600a811061016357fe5b01546001600160a01b0316905081565b33600282600a811061018157fe5b0180546001600160a01b039283166001600160a01b031991821617909155604080516060810182523381526020808201878152828401898152600088815292839052848320935184549088169616959095178355516001838101919091559351600290920191909155915490519216913480156108fc0292909190818181858888f19350505050158015610219573d6000803e3d6000fd5b5050505056fea265627a7a723158202a4abced7958b6ca92daf0a408a4b8b9541f3c6d7f9b36f4366e6c6c52b53d7f64736f6c634300050b0032";

    public static final String FUNC_PROVIDER = "provider";

    public static final String FUNC_PRODUCTDETAIL = "productDetail";

    public static final String FUNC_WALLETS = "wallets";

    public static final String FUNC_PRODUCTBUY = "productBuy";

    @Deprecated
    protected Product(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected Product(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, credentials, contractGasProvider);
    }

    @Deprecated
    protected Product(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    protected Product(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public RemoteCall<String> provider() {
        final Function function = new Function(FUNC_PROVIDER, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<Tuple3<String, byte[], BigInteger>> productDetail(BigInteger param0) {
        final Function function = new Function(FUNC_PRODUCTDETAIL, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}, new TypeReference<Bytes32>() {}, new TypeReference<Uint256>() {}));
        return new RemoteCall<Tuple3<String, byte[], BigInteger>>(
                new Callable<Tuple3<String, byte[], BigInteger>>() {
                    @Override
                    public Tuple3<String, byte[], BigInteger> call() throws Exception {
                        List<Type> results = executeCallMultipleValueReturn(function);
                        return new Tuple3<String, byte[], BigInteger>(
                                (String) results.get(0).getValue(), 
                                (byte[]) results.get(1).getValue(), 
                                (BigInteger) results.get(2).getValue());
                    }
                });
    }

    public RemoteCall<String> wallets(BigInteger param0) {
        final Function function = new Function(FUNC_WALLETS, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<TransactionReceipt> productBuy(BigInteger _count, byte[] _name, BigInteger _id, BigInteger weiValue) {
        final Function function = new Function(
                FUNC_PRODUCTBUY, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(_count), 
                new org.web3j.abi.datatypes.generated.Bytes32(_name), 
                new org.web3j.abi.datatypes.generated.Uint256(_id)), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function, weiValue);
    }

    public static RemoteCall<Product> deploy(Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Product.class, web3j, credentials, contractGasProvider, BINARY, "");
    }

    public static RemoteCall<Product> deploy(Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Product.class, web3j, transactionManager, contractGasProvider, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Product> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Product.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Product> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Product.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static Product load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new Product(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static Product load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new Product(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public static Product load(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return new Product(contractAddress, web3j, credentials, contractGasProvider);
    }

    public static Product load(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return new Product(contractAddress, web3j, transactionManager, contractGasProvider);
    }
}
