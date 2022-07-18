// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Local varialbes
        -> the variable that is declared inside the function
        -> it will be stored in stack not in contract storage
        -> Don't const gas.
        -> There are same type that refrence the storage by default
        -> memroy keyword can't be used at contract level.
*/

contract local {
    // string memory name="Roman";
    // Memroy keyword can't be used at contract level.
    function store() public pure returns (uint256) {
        // pure function means the function that doesn't make change in state varialbe and even doesn't read any state varialbe
        // string name="Roman";
        // NOTE: we can't declare string variable on local label it only can be able to declare on contract label if we want to use string variable on local label the we have to use 'memory' keyword
        string memory name = "Roman";
        // now we have to had store string nither on stack nor on contract storage but on memroy
        uint256 age = 10; // local varialbe stored in stack
        return age;
    }
}
