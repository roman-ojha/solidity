// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    -> here we will create smart contract called identity
*/

contract Identity {
    // while we are doing solidity programming we have to make contract
    // the way that we make class in other programming language we make contrace in solidity
    string name;
    uint256 age;

    constructor() {
        // when we will deploy contract we want to set value fo name and age
        name = "Ravi";
        age = 17;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function setAge() public {
        age = age + 1;
    }
}
