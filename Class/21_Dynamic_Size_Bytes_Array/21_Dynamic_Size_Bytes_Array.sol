// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array {
    bytes public b1 = "abc";

    function pushElement() public {
        b1.push("d");
    }

    function getElement(uint256 i) public view returns (bytes1) {
        // to get the particular element from the bytes array
        return b1[i];
    }

    function popElement() public {
        b1.pop();
    }

    function length() public view returns (uint256) {
        return b1.length;
    }
}
