// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Local variables
        -> the variable that is declared inside the function
        -> it will be stored in stack not in contract storage
        -> Don't cost gas.
        -> There are same type that reference the storage by default
        -> memory keyword can't be used at contract level.
*/

contract local {
    // string memory name="Roman";
    // memory keyword can't be used at contract level.
    function store() public pure returns (uint256) {
        // pure function means the function that doesn't make change in state variable and even doesn't read any state variable.
        // string name="Roman";
        // NOTE: we can't declare string variable on local label it only can be able to declare on contract label if we want to use string variable on local label the we have to use 'memory' keyword
        string memory name = "Roman";
        // now we have to had store string neither on stack nor on contract storage but on memory
        uint256 age = 10; // local variable stored in stack
        return age;
    }
}
