// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) New
        -> The new keyword in Solidity deploys and creates a new contract instance. It initializes the contract instance by deploying the contract, initializing the state variables, running its constructor, setting the nonce value to one, and, eventually, returns the address of the instance to the caller. 
        -> Deploying a contract involves checking whether the requestor has provided enough gas to complete deployment, generating a new account/address for contract deployment using the requestor's address and nonce value, and passing on any Ether sent along with it.
    *) Requirements to use the New keyword in Solidity
        -> It should be noted that for the New keyword to successfully execute and create a new contract:

         * The code to create the new contract is known before execution
         * The address of the new contract is computed from the address of the creating contract
         * Creating a new contract requires a gas fee in order to complete the operation
*/

// here we will create the contract into another contract
// there are two ways to create contract
// 1. create
// 2. createto
// first we will create one contract
contract Account {
    address public bank;
    address public owner;

    constructor(address _owner) payable {
        bank = msg.sender;
        owner = _owner;
    }
}

// now into this contract we will deploy 'Account' contract
// NOTE: usually you see when one contract deploy another contract that contract name user named as '<contract>Factory'
contract AccountFactory {
    // ex: accounts[0] = 0x4C4KD354LFK434JFD43JDF is the address of the contract that we deployed from this contract
    // and we can call the contract and it's functions using the given address
    Account[] public accounts;

    // this function will take the argument that will required to create 'Account' contract
    function createAccount(address _owner) external payable {
        // to deploy the contract from another contract we can do this
        // we will pass the constructor parameter values while create new contract
        Account account = new Account(_owner);
        accounts.push(account);

        // we can also pass the ether to the contract while creating the new contract
        // here we have to specify the amount of ether we want to send inside {value: <amount>}
        // to send ether while creating the contract first we have to make 'createAccount' function payable so that the amount that we send from 'createAccount' function will get forwarded to while creating new contract
        // EX:
        // msg.value = 200
        // 111 send to the 'Account' contract
        Account account2 = new Account{value: 111 wei}(_owner);
        accounts.push(account2);
    }
}
