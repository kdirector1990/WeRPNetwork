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
public class Department extends Contract {
    private static final String BINARY = "608060405234801561001057600080fd5b50600180546001600160a01b031916331790556102f5806100326000396000f3fe60806040526004361061003f5760003560e01c806332bfdac4146100445780637e290aee1461007f57806391a50ebb146100b0578063c07b004c14610102575b600080fd5b61006d6004803603606081101561005a57600080fd5b508035906020810135906040013561012c565b60408051918252519081900360200190f35b34801561008b57600080fd5b5061009461025f565b604080516001600160a01b039092168252519081900360200190f35b3480156100bc57600080fd5b506100da600480360360208110156100d357600080fd5b503561026e565b604080516001600160a01b039094168452602084019290925282820152519081900360600190f35b34801561010e57600080fd5b506100946004803603602081101561012557600080fd5b5035610299565b6001546000906002906001600160a01b0316310615610187576040805162461bcd60e51b81526020600482015260126024820152714576656e2076616c7565207265717569726560701b604482015290519081900360640190fd5b6001546001600160a01b0316318210156102545733600285815481106101a957fe5b6000918252602080832090910180546001600160a01b039485166001600160a01b031991821617909155604080516060810182523381528084018981528183018981528a87529486905282862091518254908816941693909317815591516001838101919091559251600290920191909155905490519216913480156108fc0292909190818181858888f1935050505015801561024a573d6000803e3d6000fd5b5060019050610258565b5060025b9392505050565b6001546001600160a01b031681565b6000602081905290815260409020805460018201546002909201546001600160a01b03909116919083565b600281815481106102a657fe5b6000918252602090912001546001600160a01b031690508156fea265627a7a723158200097f3a284e2cfdb56ada238de40617d8fc5e7b11fa02965b90b4b5c0abad7c564736f6c634300050b0032";

    public static final String FUNC_BUDGETPARTMENT = "budgetPartment";

    public static final String FUNC_MONEYCONTROLLER = "moneycontroller";

    public static final String FUNC_DEPARTMENT = "department";

    public static final String FUNC_FINANCE = "finance";

    @Deprecated
    protected Department(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected Department(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, credentials, contractGasProvider);
    }

    @Deprecated
    protected Department(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    protected Department(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public RemoteCall<TransactionReceipt> budgetPartment(BigInteger _id, byte[] _name, BigInteger _money, BigInteger weiValue) {
        final Function function = new Function(
                FUNC_BUDGETPARTMENT, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(_id), 
                new org.web3j.abi.datatypes.generated.Bytes32(_name), 
                new org.web3j.abi.datatypes.generated.Uint256(_money)), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function, weiValue);
    }

    public RemoteCall<String> moneycontroller() {
        final Function function = new Function(FUNC_MONEYCONTROLLER, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteCall<Tuple3<String, byte[], BigInteger>> department(byte[] param0) {
        final Function function = new Function(FUNC_DEPARTMENT, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Bytes32(param0)), 
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

    public RemoteCall<String> finance(BigInteger param0) {
        final Function function = new Function(FUNC_FINANCE, 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.generated.Uint256(param0)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public static RemoteCall<Department> deploy(Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Department.class, web3j, credentials, contractGasProvider, BINARY, "");
    }

    public static RemoteCall<Department> deploy(Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return deployRemoteCall(Department.class, web3j, transactionManager, contractGasProvider, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Department> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Department.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static RemoteCall<Department> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Department.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    @Deprecated
    public static Department load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new Department(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static Department load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new Department(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public static Department load(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return new Department(contractAddress, web3j, credentials, contractGasProvider);
    }

    public static Department load(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return new Department(contractAddress, web3j, transactionManager, contractGasProvider);
    }
}
