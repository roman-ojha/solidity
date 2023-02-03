// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Payable:
        -> it is a modifier.
        -> When writing a smart contract, you need to ensure that money is being sent to the contract and out of the contract as well. Payable does this for you, any function in Solidity with the modifier Payable ensures that the function can send and receive Ether.
*/

contract Payable {
    // Payable means we can pay eth to that given address

    // here this address is not payable
    address a;

    // here this address is payable
    address payable b;

    function abc() public {
        // here this function will not get any payable value
    }

    function send_eth() public payable {
        // here while calling this function we can send the 'eth' amount for the contract
        // and if we will send the eth using this function that eth will get store into the contract balance
    }

    function transfer_eth(address payable _to, address _to2) public {
        // also we can transfer the eth that contract have to other address
        // here we will transfer eth to '_to' address
        // _to.transfer(<amount>)

        //  we can check the balance of contract as well like this
        uint256 contract_balance = address(this).balance;
        _to.transfer(contract_balance / 2);

        // here for '_to' address we make it payable because of that only we are being able to transfer the eth

        // here while getting '_to2' address that is not payable because of that we can't transfer balance into that address
        // first we have to make that '_to2' address payable only after that we can transfer the balance
        payable(_to2).transfer(100 wei);
    }

    address payable admin;

    constructor() {
        // so here 'admin' is payable so while assigning the address to the admin we have to convert the address into payable
        admin = payable(msg.sender);

        // now we can transfer contract balance to the admin
        admin.transfer(100);
    }
}

contract Balance {
    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // here we will put the address of the account where we want to send the ether
    // here we are making explicitly type of payable

    function payEther() public payable {
        // payable - we will use payable if we want to transform some amount of ether in our contract
        // by only writing payable in function now this contract is capable to store some amount of ether
        // In remix IDE using value input filed we will pay some amount of ether
    }

    function getBalance() public view returns (uint256) {
        // now using this function we will return the balance that holds by this contract
        return address(this).balance;
        // here 'this' means the contract instance
        // now it will return the balance of hold by the contract
    }

    function sendEtherAccount() public {
        // in this function we will transform ether this contract to paticular address
        user.transfer(1 ether);
    }

    function checkBalance(address _address) public view returns (uint256) {
        // you can check the balance of any contract address or user address that exist in blockchain network
        // here we are checking the balance of '_address' address
        uint256 balance = address(_address).balance;

        // check the balance of the address that is calling this function
        balance = address(msg.sender).balance;
        return balance;
    }
}
