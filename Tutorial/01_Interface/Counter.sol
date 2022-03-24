// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Counter {
    // this will be the contract that we will deployed first and try to access on our '01_Interface.sol'
    uint256 public count;

    function increment() external {
        count++;
    }
}
