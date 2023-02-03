// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Library
        -> library allow to separate and reuse code
        -> when we have to use some function again & again in different contract
        -> and those function have same functionality in that case we can use library
        -> and we can store all the function that we reuse again and again inside library
        -> we can't define state variable inside library
*/

library Calculator {
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        // we can define pure function because here we are not changing any state variable
        return a + b;
    }

    function sub(uint256 a, uint256 b) external pure returns (uint256) {
        return a - b;
    }
}

contract Main {
    // now inside this contract we can use the library
    function getAddition() public pure returns (uint256) {
        // calling the library function like this
        uint256 result = Calculator.add(1, 2);
        return result;
    }
}
