// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BollDataType {
    bool public value;

    // hold only 'true' or 'false'
    // default value is 'false'
    function check(uint256 a) public returns (bool) {
        if (a > 100) {
            value = true;
        } else {
            value = false;
        }
        return value;
    }
}
