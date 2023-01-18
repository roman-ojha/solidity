// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) What is Constructor:
        -> Constructor is the spacial type of function will will be called when compiler make instance of contract
        -> Or constructor will get call when we will deployed the contract into the blockchain.
*/

contract local {
    uint256 public count;

    constructor(uint256 new_count) {
        count = new_count;
    }
}
