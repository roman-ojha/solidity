// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    -> in this class we will learn about how we can transform ether to contract
*/

contract pay {
    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // here we will put the address of the account where we want to send the ether
    // here we are making explicitly type of payable

    function payEther() public payable {
        // payable - we will use payable if we want to transform some abount of ether in our contract
        // by only writing payable in function now this contract is capable to store some amount of ether
        // In remix IDE using value input filed we will pay some amount of ether
    }

    function getBlance() public view returns (uint256) {
        // now using this function we will return the balance that holds by this contract
        return address(this).balance;
        // now it will return the balance of hold by the contract
    }

    function sendEtherAccount() public {
        // in this function we will transform ether this contract to paticular address
        user.transfer(1 ether);
    }
}
