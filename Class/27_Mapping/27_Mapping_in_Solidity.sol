// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Mapping:
        -> Concept of keys and value;
        -> mapping(key=>value)
*/

contract Map {
    mapping(uint256 => string) public rool_no;

    function setter(uint256 key, string memory value) public {
        rool_no[key] = value;
    }
}
