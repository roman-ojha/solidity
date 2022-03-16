// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Array:
        -> Fixed Size Array
        -> Dynamic Size Array
*/

contract Array {
    uint256[4] public arr = [10, 20, 30, 40];

    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    function length() public view returns (uint256) {
        return arr.length;
    }
}
