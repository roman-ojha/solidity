// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

library Calculator {
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        // we can define pure function because here we are not changing any state variable
        return a + b;
    }

    function sub(uint256 a, uint256 b) external pure returns (uint256) {
        return a - b;
    }
}
