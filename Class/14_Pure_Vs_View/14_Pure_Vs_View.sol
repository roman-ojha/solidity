// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    -> if the function didnot change the value of state variable then we can use 'view' or 'pure' for that particular function
    *) View:
        -> read is allowed but write is not allowed
    *) Pure:
        -> we can't use pure if function is reading that state variable
        -> if there is not haveing any read and write for state variable only in that case we can use pure
*/

contract local {
    uint256 age = 10;

    function getter() public view returns (uint256) {
        return age;
    }

    function getNumber() public pure returns (uint256) {
        uint256 roll = 100;
        return roll;
    }

    string public name = "Roman";
}
