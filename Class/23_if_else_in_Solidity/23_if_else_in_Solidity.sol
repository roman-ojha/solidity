// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IFElse {
    function check(int256 a) public pure returns (string memory) {
        string memory value;
        if (a > 0) {
            value = "getter then zero";
        } else if (a < 0) {
            value = "lesser then zero";
        } else {
            value = "equal to zero";
        }
        return value;
    }
}
