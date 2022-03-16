// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
 *) Storage
    -> Holds state variables.
    -> Persistent
    -> Cost gas
    -> Like a computer HDD
 *) Memroy
    -> Hold local variables defined inside function if they are reference types.
    -> Not Persistent
    -> No Gas
    -> Like a computer RAM
 */

contract Demo {
    string[] public student = ["Roman", "Razz", "Hari"];

    function mem() public view {
        // here we are using memroy
        string[] memory s1 = student;
        s1[0] = "Ronish";
    }

    function sto() public {
        // here we are using storage
        string[] storage s1 = student;
        s1[0] = "Ronish";
    }
}
