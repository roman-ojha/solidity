// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array {
    uint256[] public arr;

    function pushElement(uint256 value) public {
        arr.push(value);
        // to push the element on last index
    }

    function popElement() public {
        arr.pop();
        // to pop element of last index
    }

    function length() public view returns (uint256) {
        return arr.length;
    }
}
