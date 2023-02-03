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

    // EX:
    struct Bar {
        address owner;
        uint256[] x;
    }
    Bar[] public bars;

    function foobar(address a) public {
        Bar memory b;
        b.owner = a;
        //When 'b' is pushed to 'bars' array:
        // (1) 'b' will be converted from memory to storage.
        // (2) And 'x' inside it will be initialized automatically to empty array.
        bars.push(b);
    }

    // https://ethereum.stackexchange.com/questions/97366/storage-arrays-with-nested-mappings-do-not-support-pusharg
}
